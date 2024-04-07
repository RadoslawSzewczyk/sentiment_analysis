// #include <filesystem>
// #include <regex>
// #include <fstream>
// #include <sstream>
// #include <vector>
// #include <algorithm>
// #include <limits>

// class dataHandle
// {
// public:
//     static std::vector<std::string> tokenize(const std::string& str);

//     static void processAndTokenizeFilee() {
//         std::filesystem::path trainData = "amazon_review_polarity_csv/train.csv";
//         std::filesystem::path trainTokens = "amazon_review_polarity_csv/tokens.csv";
//         std::ifstream inputFile(trainData);
//         std::ofstream outputFile(trainTokens);
//         std::string line;

//         if (!inputFile.is_open() || !outputFile.is_open()) {
//             return;
//         }

//         while (std::getline(inputFile, line)) {
//             std::istringstream iss(line);
//             std::string label, productName, review, combinedText;

//             std::getline(iss, label, ',');
//             iss.ignore(std::numeric_limits<std::streamsize>::max(), '"');
//             std::getline(iss, productName, '"');
//             iss.ignore(1);
//             std::getline(iss, review);
            
//             combinedText = productName + " " + review;

//             auto tokens = tokenize(combinedText);

//             for (const auto& tok : tokens) {
//                 outputFile << label << "," << tok << std::endl;
//             }
//         }

//         inputFile.close();
//         outputFile.close();
//     }
    
    
// static void helloo()
// {
//     int a = 1;
// }


    
// };

