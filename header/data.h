#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include <sstream>
#include <regex>
#include <filesystem>
#include <thread>
#include <mutex>
#include <queue>
#include <condition_variable>
#include <unordered_map>
#include "wordMatch.h"

class dataFrame {
public:
    std::filesystem::path dataInputPath;
    std::filesystem::path dataOutputPath;
    std::string dataName;
    bool stop;
    //operator overloading get vars

    void previewData(int x = 10) {
        std::ifstream inputFile(dataInputPath);
        std::string line;
        int count = 0;
        while (std::getline(inputFile, line) && count < x) {
            std::cout << line << std::endl;
            count++;
        }
    }
    const std::string specialChars = "#$@!%^&*()?\\\"/-+|':<,._=[]{}34567890";
    std::vector<std::string> stopWords = wordMatch::stopWordsToVec();
    std::vector<std::string> dict = wordMatch::dictWordsToVec();

    virtual void processAndTokenizeFile(const int batch_size = 10) {
        std::unordered_map<std::string, int> wordMap;
        std::mutex mtx;
        int wordCount = 1;
        std::ifstream inputFile(dataInputPath);
        std::ofstream outputFile(dataOutputPath);

        if (!inputFile.is_open() || !outputFile.is_open()) {
            std::cout << "Error opening files." << "\n";
            return;
        }

        std::queue<std::string> lineQueue;
        std::condition_variable cv;
        std::vector<std::thread> workers;

        for (int i = 0; i < std::thread::hardware_concurrency(); ++i) {
            workers.emplace_back([this, &lineQueue, &cv, &wordMap, &mtx, &wordCount, &outputFile]() {
                while (true) {
                    std::string line;
                    {
                        std::unique_lock<std::mutex> lock(mtx);
                        cv.wait(lock, [&lineQueue, this]() { return !lineQueue.empty() || stop; });
                        if (stop && lineQueue.empty()) return;
                        line = std::move(lineQueue.front());
                        lineQueue.pop();
                    }
                    processLine(line, wordMap, mtx, wordCount, outputFile);
                }
                });
        }

        std::string line;
        while (std::getline(inputFile, line)) {
            {
                std::unique_lock<std::mutex> lock(mtx);
                lineQueue.push(line);
            }
            cv.notify_one();
        }

        {
            std::unique_lock<std::mutex> lock(mtx);
            stop = true;
        }
        cv.notify_all();
        for (auto& worker : workers) {
            worker.join();
            std::cout << "worker joined \n";
        }

        inputFile.close();
        outputFile.close();
    }

    virtual void processLine(std::string& line, std::unordered_map<std::string, int>& wordMap, std::mutex& mtx, int& wordCount, std::ofstream& outputFile) {
        if (line.empty()) {
            return;
        }

        std::transform(line.begin(), line.end(), line.begin(), [](unsigned char c) { return std::tolower(c); });

        char label = line[1];

        std::string content = line.substr(1);

        std::string filteredString;
        for (char c : content) {
            if (specialChars.find(c) == std::string::npos) {
                filteredString += c;
            }
            else {
                filteredString += " ";
            }
        }

        filteredString.erase(std::unique(filteredString.begin(), filteredString.end(), [](char a, char b) { return a == ' ' && b == ' '; }), filteredString.end());

        filteredString = wordMatch::removeStopWords(filteredString, stopWords, 1);
        filteredString = wordMatch::autocorrectWords(filteredString, dict, 1);

        std::istringstream iss(filteredString);
        std::string word;
        std::string outputString(1, label);

        while (iss >> word) {
            std::lock_guard<std::mutex> lock(mtx);
            if (wordMap.find(word) == wordMap.end()) {
                wordMap[word] = wordCount++;
            }
            outputString += " " + std::to_string(wordMap[word]);
        }
        {
            std::lock_guard<std::mutex> lock(mtx);
            outputFile << outputString << "\n";
        }
        std::cout << "line done \n";
    }

    virtual ~dataFrame() = default;
};

class dataAmazonReview : public dataFrame {
public:
    dataAmazonReview(const std::filesystem::path &dataInputPathC = "../amazon_review_polarity_csv/ttest.csv", const std::filesystem::path &dataOutputPathC = "../amazon_review_polarity_csv/tokens.csv", const std::string &dataNameC = "Amazon Review") {
        dataInputPath = dataInputPathC;
        dataOutputPath = dataOutputPathC;
        dataName = dataNameC;
    }

    ~dataAmazonReview() = default;
};


class defaultDataFrame : public dataFrame {
public:
    defaultDataFrame(const std::filesystem::path& dataInputPathC, const std::filesystem::path& dataOutputPathC, const std::string& dataNameC) {
        dataInputPath = dataInputPathC;
        dataOutputPath = dataOutputPathC;
        dataName = dataNameC;
    }

    ~defaultDataFrame() = default;
};
