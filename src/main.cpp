#include <string>
#include <vector>
#include <iostream>
#include "classificators.h"

int main() {

    // dataAmazonReview review;
    // naiveBayes nb(review);

    // try {
    //     nb.train();
    // }
    // catch (const std::runtime_error& e) {
    //     std::cerr << "Training Error: " << e.what() << std::endl;
    //     return 1;
    // }

    // nb.saveToFile("../models/model.txt");
    // defaultDataFrame revieww("def.txt", "ddef.txt", "Def");
    // naiveBayes nb_loaded(revieww);
    // nb_loaded.readFromFile("../models/model.txt");
    // std::vector<int> features = { 2, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 4, 11, 12, 13, 5, 14, 15, 16, 17, 5, 18, 6, 7, 8, 5, 19 };
    // try {
    //     auto prediction = nb_loaded.predict(features);

    //     std::cout << "Predicted class: " << prediction.first << " with probability: " << prediction.second << std::endl;
    // }
    // catch (const std::invalid_argument& e) {
    //     std::cerr << "Prediction Error: " << e.what() << std::endl;
    // }

    dataAmazonReview am1;
    dataAmazonReview am2;

    if(am1 == am2) std::cout << "tak";

    return 0;
}