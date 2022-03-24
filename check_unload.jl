using Libdl

libname = "./libfoo.so"

if !isempty(filter(x->contains(x, libname), Libdl.dllist()))
  println("error - not empty at start")
  exit(1)
end

lib = Libdl.dlopen(libname)

if isempty(filter(x->contains(x, libname), Libdl.dllist()))
  println("error - empty after load")
  exit(1)
end

Libdl.dlclose(lib)

if !isempty(filter(x->contains(x, libname), Libdl.dllist()))
  println("error - not empty after unload")
  exit(1)
end

println("success")
