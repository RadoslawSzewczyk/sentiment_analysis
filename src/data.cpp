#include "data.h"

void toLowerCase(std::string& str)
{
    for (char& c : str)
    {
        c = std::tolower(static_cast<unsigned char>(c));
    }
}

void dataFrame::previewData(int x) 
{
    std::ifstream inputFile(dataInputPath);
    std::string line;
    int count = 0;
    while (std::getline(inputFile, line) && count < x) 
    {
        std::cout << line << std::endl;
        count++;
    }
}

void dataFrame::processAndTokenizeFile(const int batch_size) 
{
    std::unordered_map<std::string, int> wordMap;
    std::mutex mtx;
    int wordCount = 1;
    std::ifstream inputFile(dataInputPath);
    std::ofstream outputFile(dataOutputPath);

    if (!inputFile.is_open() || !outputFile.is_open()) 
    {
        std::cout << "Error opening files." << "\n";
        return;
    }

    std::queue<std::string> lineQueue;
    std::condition_variable cv;
    std::vector<std::thread> workers;

    for (int i = 0; i < std::thread::hardware_concurrency(); ++i) 
    {
        workers.emplace_back([this, &lineQueue, &cv, &wordMap, &mtx, &wordCount, &outputFile]() 
        {
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

void dataFrame::processLine(std::string& line, std::unordered_map<std::string, int>& wordMap, std::mutex& mtx, int& wordCount, std::ofstream& outputFile)
{
    if (line.empty())
    {
        return;
    }

    toLowerCase(line);

    char label = line[1];

    std::string content = line.substr(1);

    std::string filteredString;
    for (char c : content) 
    {
        if (specialChars.find(c) == std::string::npos) 
        {
            filteredString += c;
        }
        else 
        {
            filteredString += " ";
        }
    }

    filteredString.erase(std::unique(filteredString.begin(), filteredString.end(), [](char a, char b) { return a == ' ' && b == ' '; }), filteredString.end());

    filteredString = wordMatch::removeStopWords(filteredString, stopWords, 1);
    filteredString = wordMatch::autocorrectWords(filteredString, dict, 1);

    std::istringstream iss(filteredString);
    std::string word;
    std::string outputString(1, label);

    while (iss >> word)
    {
        std::lock_guard<std::mutex> lock(mtx);
        if (wordMap.find(word) == wordMap.end())
        {
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

std::vector<int> dataFrame::processSingleLine(const std::string& line) {
    std::vector<int> tokenizedLine;

    if (line.empty()) {
        return tokenizedLine;
    }

    std::unordered_map<std::string, int> wordMap;
    int wordCount = 1;


    std::string processedLine = line;
    toLowerCase(processedLine);

    std::string filteredString;
    for (char c : processedLine) {
        if (specialChars.find(c) == std::string::npos) {
            filteredString += c;
        } else {
            filteredString += " ";
        }
    }
    filteredString.erase(std::unique(filteredString.begin(), filteredString.end(), [](char a, char b) { return a == ' ' && b == ' '; }), filteredString.end());

    filteredString = wordMatch::removeStopWords(filteredString, stopWords, 1);
    filteredString = wordMatch::autocorrectWords(filteredString, dict, 1);

    std::istringstream iss(filteredString);
    std::string word;

    while (iss >> word) {
        if (wordMap.find(word) == wordMap.end()) {
            wordMap[word] = wordCount++;
        }
        tokenizedLine.push_back(wordMap[word]);
    }

    return tokenizedLine;
}

dataAmazonReview::dataAmazonReview(const std::filesystem::path &dataInputPathC, const std::filesystem::path &dataOutputPathC, const std::string &dataNameC) {
    dataInputPath = dataInputPathC;
    dataOutputPath = dataOutputPathC;
    dataName = dataNameC;
}

defaultDataFrame::defaultDataFrame(const std::filesystem::path& dataInputPathC, const std::filesystem::path& dataOutputPathC, const std::string& dataNameC) {
    dataInputPath = dataInputPathC;
    dataOutputPath = dataOutputPathC;
    dataName = dataNameC;
}

dataFrame& dataFrame::operator=(const dataFrame& other){
    this->dataName = other.dataName;
    this->dataInputPath = other.dataInputPath;
    this->dataOutputPath = other.dataOutputPath;
    return *this;
}

bool dataFrame::operator==(const dataFrame& other) const
{
    if(this->dataName == other.dataName) return true;
    return false;
}
