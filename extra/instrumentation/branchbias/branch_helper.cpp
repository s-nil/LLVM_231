// CSE 231 Project Part 1
// Profiling Branch Bias

#include <iostream>
#include <stdio.h>
#include <string>

#include <map>

using namespace std;

std::map<std::string, int> map_taken; //function mapping to record numbers of branches being taken
std::map<std::string, int> map_total; //function mapping to record numbers of total branches

void BranchTaken(char* function) {
	string fname(function);
	if (map_taken[fname]) {
		map_taken[fname]++;
	} 
	else {
		map_taken[fname] = 1;
	}
}

void BranchTotal(char* function) {
	string fname(function);
	if (map_total[fname]) {
		map_total[fname]++;
	} else {
		map_total[fname] = 1;
	}
}

void PrintStats() {
	fprintf(stderr, "%s %s %s %s\n", "Function", "Bias", "Taken", "Total");
	if (map_total.empty()){		
		fprintf(stderr, "%s %s %d %d\n", "NA", "NA", 0, 0);
		return;
	}
	else{
		for (std::map<string, int>::iterator itr = map_taken.begin(); itr!= map_taken.end(); ++itr){
			string fname = itr->first;
			int count_taken = map_taken[fname];
			int count_total = map_total[fname];
			double bias = (double)count_taken/count_total;
			fprintf(stderr, "%s %3.2f %d %d\n", fname.c_str(), bias, count_taken, count_total);
		}
	}
}

