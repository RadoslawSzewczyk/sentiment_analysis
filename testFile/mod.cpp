module;

#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include <sstream>
#include <regex>
#include <filesystem>
//debug cmake cmake -S .. -B build-debug -DCMAKE_BUILD_TYPE=Debug // cmake --build build-debug //gdb build-debug/sentimenttest
// Generate an interrupt std::raise(SIGINT);

export module data;

std::vector<std::string> dictWordsToList (){
  std::vector<std::string> retVec;
  std::filesystem::path dict = "/home/radek/repos/sentiment_analysis/dict.txt";
  std::ifstream inputFile(dict);
  std::string line;
  while(std::getline(inputFile, line)){
    retVec.push_back(line);

  }
  //return retVec;
}

export void processAndTokenizeFile() {
  std::filesystem::path trainData = "/home/radek/repos/sentiment_analysis/amazon_review_polarity_csv/train.csv";
  std::filesystem::path trainTokens = "/home/radek/repos/sentiment_analysis/amazon_review_polarity_csv/tokens.csv";
  std::ifstream inputFile(trainData);
  std::ofstream outputFile(trainTokens);
  const std::string specialChars = "#$@!%^&*()?\\\"/-+|':<,._=[]{}";
  std::string line;

  if (!inputFile.is_open() || !outputFile.is_open()) {
    std::cout << "Error opening files." << std::endl;
    return;
  }

  //filter out specialChars
  while (std::getline(inputFile, line)) {
    std::transform(line.begin(), line.end(), line.begin(), [](unsigned char c) { return std::tolower(c); }); //lowercase
    std::string filteredString;
    for (int i = 0; i < line.size(); i++) {
      if (specialChars.find(line[i]) == std::string::npos) {
        filteredString += line[i];
      }
      else{
        filteredString += " ";
      }
    }
    //spaces leave just one
    for(int i = 0; i < filteredString.size() - 1;i++){
      if(filteredString[i] == ' ' && filteredString[i + 1] == ' '){
        filteredString.replace(i, 1, "");
        i--;
      }
    }

    //count words matching
    
    outputFile << filteredString << std::endl;
  }
  
}
