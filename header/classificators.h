#include <string>
#include <map>
#include <fstream>
#include <sstream>
#include <vector>
#include <filesystem>
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

class naiveBayes : classificator {

    std::unordered_map<int, int> class_counts;
    std::unordered_map<int, std::vector<int>> feature_counts;
    std::vector<int> total_feature_counts;
    int num_features = 0;
    int num_classes = 0;
    int total_class_count() {
        int sum = 0;
        for (const auto& class_count : class_counts) {
            sum += class_count.second;
        }
        return sum;
    }
public:
    naiveBayes(const dataAmazonReview& review) {
        tokens = review.dataOutputPath;
    }
    naiveBayes(const defaultDataFrame& review) {
		tokens = review.dataOutputPath;
	}

    ~naiveBayes() = default;

    virtual void train() {
        std::ifstream file(tokens);
        if (!file.is_open()) {
            throw std::runtime_error("Could not open file.");
        }

        std::string line;
        int max_feature_count = 0;

        while (std::getline(file, line)) {
            std::istringstream iss(line);
            int label, feature, count = 0;
            iss >> label;
            while (iss >> feature) {
                count++;
            }
            if (count > max_feature_count) {
                max_feature_count = count;
            }
        }

        file.clear();
        file.seekg(0);

        total_feature_counts.resize(max_feature_count, 0);

        while (std::getline(file, line)) {
            std::istringstream iss(line);
            int label;
            if (!(iss >> label)) {
                throw std::runtime_error("Error reading label from line: " + line);
            }

            class_counts[label]++;

            if (feature_counts.find(label) == feature_counts.end()) {
                feature_counts[label] = std::vector<int>(max_feature_count, 0);
            }

            int feature;
            int i = 0;
            while (iss >> feature) {
                feature_counts[label][i] += feature;
                total_feature_counts[i] += feature;
                i++;
            }

        }

        num_features = max_feature_count;
        num_classes = class_counts.size();

        std::cout << "Number of features: " << num_features << std::endl;
        std::cout << "Number of classes: " << num_classes << std::endl;
        std::cout << "Training done" << std::endl;
    }

    virtual std::pair<int, double> predict(std::vector<int> features) {
        if (features.size() < num_features) {
            features.resize(num_features, 0);
        }
        else if (features.size() > num_features) {
            throw std::invalid_argument("Feature vector size does not match the trained model. Expected " +
                std::to_string(num_features) + " but got " + std::to_string(features.size()));
        }

        double max_log_prob = -std::numeric_limits<double>::infinity();
        int best_class = -1;
        std::unordered_map<int, double> log_probs;

        for (const auto& class_count : class_counts) {
            int label = class_count.first;
            double log_prob = std::log(1.0 * class_count.second / total_class_count());

            for (int i = 0; i < num_features; i++) {
                double feature_prob = (feature_counts[label][i] + 1.0) / (class_count.second + num_features);
                log_prob += features[i] * std::log(feature_prob);
            }

            log_probs[label] = log_prob;
            if (log_prob > max_log_prob) {
                max_log_prob = log_prob;
                best_class = label;
            }
        }

        double log_sum_exp = 0.0;
        for (const auto& log_prob : log_probs) {
            log_sum_exp += std::exp(log_prob.second - max_log_prob);
        }
        log_sum_exp = max_log_prob + std::log(log_sum_exp);

        double best_class_prob = std::exp(log_probs[best_class] - log_sum_exp);

        std::cout << "Best class: " << best_class << " with log_prob: " << log_probs[best_class] << std::endl;
        return { best_class, best_class_prob };
    }

    virtual void saveToFile(const std::string& filename) const {
        std::ofstream file(filename);
        if (!file) {
            std::cerr << "Unable to open file: " << filename << "\n";
            return;
        }

        file << "#class_counts\n";
        for (const auto& class_count : class_counts) {
            int label = class_count.first;
            file << label << ' ' << class_count.second << '\n';
        }

        file << "#feature_counts\n";
        for (const auto& feature_count : feature_counts) {
            int label = feature_count.first;
            file << label;
            for (const auto& count : feature_count.second) {
                file << ' ' << count;
            }
            file << '\n';
        }

        file.close();
    }

    virtual void readFromFile(const std::string& filename) {
        std::ifstream file(filename);
        if (!file) {
            std::cerr << "Unable to open file: " << filename << "\n";
            return;
        }

        class_counts.clear();
        feature_counts.clear();
        total_feature_counts.clear();

        std::string line;
        bool reading_class_counts = false;
        bool reading_feature_counts = false;

        while (std::getline(file, line)) {
            if (line == "#class_counts") {
                reading_class_counts = true;
                reading_feature_counts = false;
                continue;
            }
            else if (line == "#feature_counts") {
                reading_class_counts = false;
                reading_feature_counts = true;
                continue;
            }

            std::istringstream iss(line);
            int label, count;

            if (reading_class_counts) {
                if (iss >> label >> count) {
                    class_counts[label] = count;
                }
            }
            else if (reading_feature_counts) {
                if (iss >> label) {
                    std::vector<int> features;
                    while (iss >> count) {
                        features.push_back(count);
                    }
                    feature_counts[label] = features;
                }
            }
        }

        num_features = 0;
        for (const auto& feature_count : feature_counts) {
            int size = feature_count.second.size();
            if (size > num_features) {
                num_features = size;
            }
        }
        total_feature_counts.resize(num_features, 0);
        for (const auto& feature_count : feature_counts) {
            for (size_t i = 0; i < feature_count.second.size(); ++i) {
                total_feature_counts[i] += feature_count.second[i];
            }
        }

        num_classes = class_counts.size();
        file.close();
    }

};