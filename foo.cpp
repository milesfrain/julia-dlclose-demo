#include <map>

void thing()
{
    std::map<int, int> my_map;
    // Comment-out below line to allow library to be unloaded
    my_map[1] = 2;
}

