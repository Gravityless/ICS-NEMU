#include "trap.h"

int a = 6;
int b = 7;
int ans[] = {6, 28, 496};
int c = 8;

int main()
{
	int n, sum, i, k = 0;
	for (n = 1; n < 500; n++)
	{
		sum = 0;
		for (i = 1; i < n; i++)
		{
			if (n % i == 0)
			{
				sum += i;
			}
		}

		if (sum == n)
		{
			nemu_assert(n == ans[k]);
			k++;
		}
	}

	nemu_assert(k == 3);

	HIT_GOOD_TRAP;

	return 0;
}
