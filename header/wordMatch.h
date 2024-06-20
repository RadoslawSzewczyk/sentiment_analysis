#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include <sstream>
#include <regex>
#include <filesystem>
#include <algorithm>
#include <ranges>
#include <functional>
#include <numeric>

class wordMatch{
public:


static int levDist(std::string word1, std::string word2);

static std::string removeStopWords(std::string line, const std::vector<std::string>& stopWords, const int &threshold);

static std::string autocorrectWords(const std::string &line, std::vector<std::string> dict, const int& threshold);

static void toNumbers(const std::filesystem::path &input, const std::filesystem::path &out);
};

class dicStop{
public:
static std::vector<std::string> dictWordsToVec();

static std::vector<std::string> stopWordsToVec();
}