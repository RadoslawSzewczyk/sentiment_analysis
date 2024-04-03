# include <pybind11/pybind11.h>
# include "data.h"

extern "C" {
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}

int func(int a, int b) {
    lua_State *L = luaL_newstate();

    luaL_openlibs(L);

    lua_pushinteger(L, a);
    lua_setglobal(L, "a");
    lua_pushinteger(L, b);
    lua_setglobal(L, "b");

    luaL_dostring(L, "result = a + b");
    lua_getglobal(L, "result");
    int result = lua_tointeger(L, -1);
    
    lua_close(L);
    
    return result;
}

namespace py = pybind11;

PYBIND11_MODULE(sentimentpy, m) {
    //m.def("processAndTokenizeFile", &dataHandle::tokenize);
    py::class_<dataHandle>(m, "dataHandle")
        .def_static("processAndTokenizeFilee", &dataHandle::processAndTokenizeFilee, "Processes and tokenizes file content");

}