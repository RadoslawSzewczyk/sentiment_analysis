#include <filesystem>
#include <regex>
#include <fstream>
#include <sstream>
#include <vector>
#include <algorithm>

class dataHandle
{
    static const std::filesystem::path trainData;
    static const std::filesystem::path trainTokens;
public:
    static std::vector<std::string> tokenize(const std::string& str);

    static void processAndTokenizeFilee() {

        std::ifstream inputFile(trainData);
        std::ofstream outputFile(trainTokens);
        std::string line;

        if (!inputFile.is_open() || !outputFile.is_open()) {
            return;
        }

        while (std::getline(inputFile, line)) {
            std::istringstream iss(line);
            std::string label, productName, review, combinedText;

            // Extract the label, product name, and review from the line
            std::getline(iss, label, ','); // Get label
            iss.ignore(std::numeric_limits<std::streamsize>::max(), '"'); // Ignore until product name
            std::getline(iss, productName, '"'); // Get product name
            iss.ignore(1); // Ignore comma
            std::getline(iss, review); // Get review
            
            combinedText = productName + " " + review; // Combine title and review

            auto tokens = tokenize(combinedText); // Tokenize the combined text

            // Write each token and label to the output file
            for (const auto& tok : tokens) {
                outputFile << label << "," << tok << std::endl;
            }
        }

        inputFile.close();
        outputFile.close();
    }
    static void hello()
    {
        int a = 68;
    }
};
const std::filesystem::path dataHandle::trainData = "amazon_review_polarity_csv/train.csv";
const std::filesystem::path dataHandle::trainTokens = "amazon_review_polarity_csv/tokens.csv";
