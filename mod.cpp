module;
# include <iterator>
# include <fstream>
# include <vector>
# include "pybind11-2.11.1/include/pybind11/stl/filesystem.h"
# include "pybind11-2.11.1/include/pybind11/stl.h"
# include "/usr/include/python3.11/Python.h"
export module data;


export class dataHandle
{
public:
    static std::vector<std::string> tokenize(const std::string& str) {
    std::vector<std::string> tokens;
    std::istringstream iss(str);
    std::string token;
    while (iss >> token) {
        tokens.push_back(token);
    }
    return tokens;
}

    static void processAndTokenizeFile() {
        std::filesystem::path trainData = "amazon_review_polarity_csv/train.csv";
        std::filesystem::path trainTokens = "amazon_review_polarity_csv/tokens.csv";
        std::ifstream inputFile(trainData);
        std::ofstream outputFile(trainTokens);
        std::string line;

        if (!inputFile.is_open() || !outputFile.is_open()) {
            return;
        }

        while (std::getline(inputFile, line)) {
            std::istringstream iss(line);
            std::string label, productName, review, combinedText;

            std::getline(iss, label, ',');
            iss.ignore(std::numeric_limits<std::streamsize>::max(), '"');
            std::getline(iss, productName, '"');
            iss.ignore(1);
            std::getline(iss, review);
            
            combinedText = productName + " " + review;

            auto tokens = tokenize(combinedText);

            for (const auto& tok : tokens) {
                outputFile << label << "," << tok << std::endl;
            }
        }

        inputFile.close();
        outputFile.close();
    }

    
};