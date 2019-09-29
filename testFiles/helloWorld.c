#include <stdio.h>

int main() {
	int var = 1;
	int *avar = &var;
	{
		int var = 5;
	}
	*avar = 7;
	return 0;
}
