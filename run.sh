set -xe

g++ -c -std=c++17 -Wall -Werror -fpic foo.cpp
g++ -shared -o libfoo.so foo.o
julia check_unload.jl
