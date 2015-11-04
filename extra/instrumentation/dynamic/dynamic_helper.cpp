#include <map>
#include <iostream>
#include <cstdio>
using namespace std;

map <string, int> CountMap;

void Count (char *opName, int count){
    string opname (opName);
    if (CountMap.count(opname)== 0){
        CountMap[opname] = count;
    }
    else{
        CountMap[opname]+=count;
    }
}

void printDI () {
    int total = 0;
    for (map<string, int>::iterator it = CountMap.begin(); it != CountMap.end(); it++){
        string opType = it->first;
        int count = it->second;
        total += count;
        std::cerr<< opType<<" \t" <<count<<std::endl;
    }
    std::cerr<<"TOTAL \t"<<total<<std::endl;
}
