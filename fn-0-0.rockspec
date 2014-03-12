package = 'fn'
version = '0-0'

source = {
    url = 'git://github.com/akfidjeland/lua-fn.git',
    branch = 'master'
}

description = {
    summary = "Some functional programming tools for Lua and Torch.",
    homepage = "https://github.com/akfidjeland/lua-fn.git"
}

dependencies = { 'torch >= 7.0'}
build = {
    type = "command",
    build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
    ]],
    install_command = "cd build && $(MAKE) install"
}
