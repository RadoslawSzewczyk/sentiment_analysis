
#include <pybind11/pybind11.h>

import data;
void wrap(){
    //dataHandle::processAndTokenizeFile();
    dataHandle::processAndTokenizeFile();
}

namespace py = pybind11;

PYBIND11_MODULE(sentimentpy, m) {
  m.def("Test", &wrap);
}