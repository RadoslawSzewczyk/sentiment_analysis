#include <pybind11/pybind11.h>

namespace py = pybind11;

// Function to expose to Python
int add(int i, int j) {
    return i + j;
}

// Pybind11 module definition
PYBIND11_MODULE(SModule, m) {
    m.doc() = "pybind11 example plugin";
    m.def("add", &add, "A function which adds two numbers");
}

// Main function for standalone executable
#ifndef PYBIND11_MODULE
int main() {
    // Example usage of add function
    std::cout << "The sum of 5 and 10 is " << add(5, 10) << std::endl;
    return 0;
}
#endif
