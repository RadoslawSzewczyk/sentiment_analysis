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
static std::vector<std::string> dictWordsToVec() {
    std::vector<std::string> retVec;
    std::filesystem::path dict = "dict.txt";
    std::ifstream inputFile(dict);
    std::string line;
    while (std::getline(inputFile, line)) {
        retVec.push_back(line);
    }
    return retVec;
}

static std::vector<std::string> stopWordsToVec() {
    std::vector<std::string> retVec;
    std::filesystem::path stop = "stopwords.txt";
    std::ifstream inputFile(stop);
    std::string line;
    while (std::getline(inputFile, line)) {
        retVec.push_back(line);
    }
    return retVec;
}

static int levDist(std::string word1, std::string word2) {
    const int sizeWord1 = word1.size();
    const int sizeWord2 = word2.size();

    std::vector<std::vector<int>> mat(sizeWord1 + 1, std::vector<int>(sizeWord2 + 1));

    for (int i = 0; i <= sizeWord1; i++) {
        mat[i][0] = i;
    }
    for (int i = 0; i <= sizeWord2; i++) {
        mat[0][i] = i;
    }
    for (int i = 1; i <= sizeWord1; i++) {
        for (int j = 1; j <= sizeWord2; j++) {
            int cost = word2[j - 1] == word1[i - 1] ? 0 : 1;
            mat[i][j] = std::min({ mat[i - 1][j] + 1, mat[i][j - 1] + 1, mat[i - 1][j - 1] + cost });
        }
    }
    return mat[sizeWord1][sizeWord2];
}

static std::string removeStopWords(std::string line, const std::vector<std::string>& stopWords, const int &threshold) {
    std::stringstream ss(line);
    std::vector<std::string> words;
    std::copy(std::istream_iterator<std::string>(ss),
        std::istream_iterator<std::string>(),
        std::back_inserter(words));
    words.erase(std::remove_if(words.begin(), words.end(),
        [&stopWords, &threshold, words](const std::string& word) {
            if (std::find(stopWords.begin(), stopWords.end(), word) != stopWords.end()) {
                return true;
            }
            for (const std::string& otherWord : words) {
                if (otherWord != word && levDist(word, otherWord) <= threshold) {
                    return true;
                }
            }
            return false;
        }),
        words.end());
    return std::accumulate(words.begin(), words.end(), std::string(""),
        [](const std::string& a, const std::string& b) {
            return a.empty() ? b : a + " " + b;
        });
}

static std::string autocorrectWords(const std::string &line, std::vector<std::string> dict, const int& threshold) {
    std::stringstream ss(line);
    std::vector<std::string> words;
    std::copy(std::istream_iterator<std::string>(ss),
        std::istream_iterator<std::string>(),
        std::back_inserter(words));
    for (int i = 0; i < words.size(); i++) {
        std::string bestMatch = words[i];
        int minDist = threshold + 1;

        for (const std::string& dictWord : dict) {
            int dist = levDist(words[i], dictWord);
            if (dist <= threshold && dist < minDist) {
                minDist = dist;
                bestMatch = dictWord;
            }
        }
        if (bestMatch != words[i]) {
            words[i] = bestMatch;
        }
    }
    return std::accumulate(words.begin(), words.end(), std::string(""),
        [](const std::string& a, const std::string& b) {
            return a.empty() ? b : a + " " + b;
        });
}

static void toNumbers(const std::filesystem::path &input, const std::filesystem::path &out) {
    std::ifstream inputFile(input);
    std::ofstream outputFile(out);

    if (!inputFile.is_open() || !outputFile.is_open()) {
        std::cerr << "Error opening file" << std::endl;
        return;
    }

    std::unordered_map<std::string, int> wordMap;
    std::string line;
    int wordCount = 1;

    while (std::getline(inputFile, line)) {
        std::istringstream iss(line);
        std::string word;
        char label = line[1];
        outputFile << label;
        std::string text = line.substr(1);
        std::istringstream textStream(text);
        while (textStream >> word) {
            if (wordMap.find(word) == wordMap.end()) {
                wordMap[word] = wordCount++;
            }
            outputFile << " " << wordMap[word];
        }
        outputFile << "\n";
    }

    inputFile.close();
    outputFile.close();
}
};