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

int levenshteinDist(std::string word1, std::string word2) {
    int size1 = word1.size();
    int size2 = word2.size();
    int verif[size1 + 1][size2 + 1]; // Verification matrix i.e. 2D array which will store the calculated distance.

    // If one of the words has zero length, the distance is equal to the size of the other word.
    if (size1 == 0)
        return size2;
    if (size2 == 0)
        return size1;

    // Sets the first row and the first column of the verification matrix with the numerical order from 0 to the length of each word.
    for (int i = 0; i <= size1; i++)
        verif[i][0] = i;
    for (int j = 0; j <= size2; j++)
        verif[0][j] = j;

    // Verification step / matrix filling.
    for (int i = 1; i <= size1; i++) {
        for (int j = 1; j <= size2; j++) {
            // Sets the modification cost.
            // 0 means no modification (i.e. equal letters) and 1 means that a modification is needed (i.e. unequal letters).
            int cost = (word2[j - 1] == word1[i - 1]) ? 0 : 1;

            // Sets the current position of the matrix as the minimum value between a (deletion), b (insertion) and c (substitution).
            // a = the upper adjacent value plus 1: verif[i - 1][j] + 1
            // b = the left adjacent value plus 1: verif[i][j - 1] + 1
            // c = the upper left adjacent value plus the modification cost: verif[i - 1][j - 1] + cost
            verif[i][j] = std::min(std::min(verif[i - 1][j] + 1, verif[i][j - 1] + 1), verif[i - 1][j - 1] + cost);
        }
    }

    // The last position of the matrix will contain the Levenshtein distance.
    std::cout <<verif[size1][size2];
    return verif[size1][size2];
}

export void test(){
  levenshteinDist("leet", "leeet");
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
