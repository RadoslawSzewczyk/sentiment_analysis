# include "data.h"

std::vector<std::string> dataHandle::tokenize(const std::string& str) {
    std::vector<std::string> tokens;
    std::istringstream iss(str);
    std::string token;
    while (iss >> token) {
        tokens.push_back(token);
    }
    return tokens;
}

void dataHandle::heloo()
{
    int a = 1;
}

