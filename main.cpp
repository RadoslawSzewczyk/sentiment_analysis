import data;
# include <pybind11/pybind11.h>

namespace py = pybind11;

void wrap(){
    dataHandle::processAndTokenizeFile();
}

PYBIND11_MODULE(sentimentpy, m) {
    m.def("Test", &wrap);

}