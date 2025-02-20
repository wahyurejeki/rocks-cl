package = "nn"
version = "scm-1"

source = {
   url = "https://github.com/hughperkins/nn.git",
   branch = "distro-cl"
}

description = {
   summary = "Neural Network package for Torch",
   detailed = [[
      distro-cl fork of nn, for opencl compatibility
   ]],
   homepage = "https://github.com/torch/nn",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
   "luaffi"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}
