#include <pybind11/pybind11.h>

namespace py = pybind11;

PYBIND11_MODULE(sentiment, m) {
    m.def("add", [](int a, int b) { return a + b; }, "A function that adds two numbers");
}
