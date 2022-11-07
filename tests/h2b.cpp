
#include <stdio.h>
#include <stdlib.h>

#include <iostream>
#include <fstream>
#include <string>

unsigned int Parse(std::string be_hex)
{
	unsigned int res = 0;
	char *dummy;
	return strtoull(be_hex.c_str(), &dummy, 16);
}

int main(int argc, char ** argv)
{
	if (argc != 3)
	{
		std::cout << "Usage: " << argv[0] << " <input_file> <output_file>" << std::endl;
		return 1;
	}
	std::ifstream file_in(argv[1]);
	std::ofstream file_out(argv[2]);
	for (std::string line ; std::getline(file_in, line) ; )
	{
		unsigned int instruction = Parse(line);
		file_out.write((char*)&instruction, 4);
	}
	return 0;
}

