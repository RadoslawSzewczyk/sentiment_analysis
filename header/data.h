#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include <sstream>
#include <regex>
//#include <filesystem>
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

    const std::string specialChars = "#$@!%^&*()?\\\"/-+|':<,._=[]{}34567890";
    
    std::vector<std::string> stopWords = wordMatch::stopWordsToVec();

    std::vector<std::string> dict = wordMatch::dictWordsToVec();

    void previewData(int x = 10);

    virtual void processAndTokenizeFile(const int batch_size = 10);

    virtual void processLine(std::string& line, std::unordered_map<std::string, int>& wordMap, std::mutex& mtx, int& wordCount, std::ofstream& outputFile);

    std::vector<int> processSingleLine(const std::string& line);

    dataFrame& operator=(const dataFrame& other);

    bool operator==(const dataFrame& other) const;

    virtual ~dataFrame() = default;
};

class dataAmazonReview : public dataFrame {
public:
    dataAmazonReview(const std::filesystem::path &dataInputPathC = "../amazon_review_polarity_csv/ttest.csv", const std::filesystem::path &dataOutputPathC = "../amazon_review_polarity_csv/tokens.csv", const std::string &dataNameC = "Amazon Review");

    ~dataAmazonReview() = default;
};


class defaultDataFrame : public dataFrame {
public:
    defaultDataFrame(const std::filesystem::path& dataInputPathC, const std::filesystem::path& dataOutputPathC, const std::string& dataNameC);

    ~defaultDataFrame() = default;
};
