module;
#include <fstream>
#include <vector>
#include <string>
#include <sstream>
#include <regex>
#include <iostream>

export module data;

export class dataHandle {
public:
  static std::vector<std::string> tokenize(const std::string& str) {
    std::regex word_regex(R"(\b\w+\b)");
    std::sregex_iterator words_begin(str.begin(), str.end(), word_regex);
    std::sregex_iterator words_end;
    std::vector<std::string> tokens;

    for (std::sregex_iterator it = words_begin; it != words_end; ++it) {
      tokens.push_back(it->str());
    }

    return tokens;
  }

  static void processAndTokenizeFile() {
    std::string trainData = "amazon_review_polarity_csv/train.csv";
    std::string trainTokens = "amazon_review_polarity_csv/tokens.csv";
    std::ifstream inputFile(trainData);
    std::ofstream outputFile(trainTokens);

    if (!inputFile.is_open() || !outputFile.is_open()) {
      std::cerr << "Error opening files." << std::endl;
      return;
    }

    std::regex csv_regex(R"((.+?),"(.+?)","(.*))");

    std::string line;
    while (std::getline(inputFile, line)) {
      std::smatch match;
      if (std::regex_match(line, match, csv_regex)) {
        std::string label = match[1];
        std::string productName = match[2];
        std::string review = match[3];

        std::string combinedText = productName + " " + review;
        auto tokens = tokenize(combinedText);

        for (const auto& tok : tokens) {
          outputFile << label << "," << tok << std::endl;
        }
      } else {
        std::cerr << "Invalid CSV format in line: " << line << std::endl;
      }
    }
  }
};
