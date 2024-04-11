module;
#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include <sstream>
#include <regex>
#include <filesystem>

export module data;
//import wordMatch;
export int levDist(std::string word1, std::string word2) {

  const int sizeWord1 = word1.size();
  const int sizeWord2 = word2.size();

  int mat[sizeWord1 + 1][sizeWord2 + 1];

  for (int i = 0; i <= sizeWord1; i++) {
    mat[i][0] = i;
  }
  for (int i = 0; i <= sizeWord2; i++) {
    mat[0][i] = i;
  }

  for (int i = 1; i <= sizeWord1; i++) {
    for (int j = 1; j <= sizeWord2; j++) {
      int cost = word2[j - 1] == word1[i - 1] ? 0 : 1;
      mat[i][j] = std::min({mat[i - 1][j] + 1, mat[i][j - 1] + 1, mat[i - 1][j - 1] + cost});
    }
  }
  return mat[sizeWord1][sizeWord2];
}

std::vector<std::string> dictWordsToList (){
  std::vector<std::string> retVec;
  std::filesystem::path dict = "/home/radek/repos/sentiment_analysis/dict.txt";
  std::ifstream inputFile(dict);
  std::string line;
  while(std::getline(inputFile, line)){
    retVec.push_back(line);

  }
  return retVec;
}
export void test(){
  dictWordsToList();
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
