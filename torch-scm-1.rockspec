package = "torch"
version = "scm-1"

source = {
   url = "git://github.com/hughperkins/torch7.git",
   branch = "distro-cl"
}

description = {
   summary = "Torch7",
   detailed = [[
      Fork of torch torch7 repo, for opencl compatibility
   ]],
   homepage = "https://github.com/torch/torch7",
   license = "BSD"
}

dependencies = {
   "lua >= 5.1",
   "paths >= 1.0",
   "cwrap >= 1.0"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DLUA=$(LUA) -DLUALIB=$(LUALIB) -DLUA_BINDIR="$(LUA_BINDIR)" -DLUA_INCDIR="$(LUA_INCDIR)" -DLUA_LIBDIR="$(LUA_LIBDIR)" -DLUADIR="$(LUADIR)" -DLIBDIR="$(LIBDIR)" -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}
