#include <string>
#include <map>
#include <fstream>
#include <sstream>
#include <vector>
//#include <filesystem>
#include <iostream>
#include <unordered_map>
#include <cmath>
#include <limits>
#include "data.h"

class classificator {
public:
	std::string name;
    std::filesystem::path tokens;
	virtual void train() = 0;
    virtual std::pair<int, double> predict(std::vector<int> features) = 0;
    virtual void saveToFile(const std::string& filename) const = 0;
    virtual void readFromFile(const std::string& filename) = 0;
};

class naiveBayes : public classificator {

    std::unordered_map<int, int> class_counts;
    std::unordered_map<int, std::vector<int>> feature_counts;
    std::vector<int> total_feature_counts;
    int num_features = 0;
    int num_classes = 0;
    int total_class_count();
public:
    naiveBayes(const dataAmazonReview& review) {
        tokens = review.dataOutputPath;
    }
   
    naiveBayes(const defaultDataFrame& review) {
		tokens = review.dataOutputPath;
	}

    ~naiveBayes() = default;

    virtual void train();

    virtual std::pair<int, double> predict(std::vector<int> features);

    virtual void saveToFile(const std::string& filename) const;

    virtual void readFromFile(const std::string& filename);

};