#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <pybind11/stl_bind.h>
#include <pybind11/complex.h>
#include <pybind11/functional.h>
#include <pybind11/stl/filesystem.h>
//#include <filesystem>

#include "classificators.h"

namespace py = pybind11;

PYBIND11_MODULE(classificator_module, m) {
    py::class_<classificator, std::shared_ptr<classificator>>(m, "classificator")
        .def("train", &classificator::train)
        .def("predict", &classificator::predict)
        .def("saveToFile", &classificator::saveToFile)
        .def("readFromFile", &classificator::readFromFile)
        .def_readwrite("name", &classificator::name)
        .def_readwrite("tokens", &classificator::tokens);

    py::class_<naiveBayes, std::shared_ptr<naiveBayes>, classificator>(m, "naiveBayes")
        .def(py::init<const dataAmazonReview&>())
        .def(py::init<const defaultDataFrame&>())
        .def("train", &naiveBayes::train)
        .def("predict", &naiveBayes::predict)
        .def("saveToFile", &naiveBayes::saveToFile)
        .def("readFromFile", &naiveBayes::readFromFile);

    py::class_<dataFrame, std::shared_ptr<dataFrame>>(m, "dataFrame")
        .def(py::init<>())
        .def_readwrite("dataInputPath", &dataFrame::dataInputPath)
        .def_readwrite("dataOutputPath", &dataFrame::dataOutputPath)
        .def_readwrite("dataName", &dataFrame::dataName)
        .def_readwrite("stop", &dataFrame::stop)
        .def("previewData", &dataFrame::previewData, py::arg("x") = 10)
        .def("processAndTokenizeFile", &dataFrame::processAndTokenizeFile, py::arg("batch_size") = 10)
        .def("processLine", &dataFrame::processLine)
        .def("processSingleLine", &dataFrame::processSingleLine)
        .def(py::self == py::self)
        .def(py::self != py::self);

    py::class_<dataAmazonReview, std::shared_ptr<dataAmazonReview>, dataFrame>(m, "dataAmazonReview")
        .def(py::init<const std::filesystem::path&, const std::filesystem::path&, const std::string&>());

    py::class_<defaultDataFrame, std::shared_ptr<defaultDataFrame>, dataFrame>(m, "defaultDataFrame")
        .def(py::init<const std::filesystem::path&, const std::filesystem::path&, const std::string&>());
}
