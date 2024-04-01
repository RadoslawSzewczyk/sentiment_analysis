#include <pybind11/pybind11.h>

#include <iostream>

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
    m.def("add", [](int a, int b) { return a + b; }, "A function that adds two numbers");
    m.def("addL", &func, "Func");

}