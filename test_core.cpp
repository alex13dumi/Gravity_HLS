#include <stdio.h>
#include "test_core.h"
#include <math.h>

int main()
{
	printf("m1=10 m2=20\n");
	float error=0;
	for (int i=0; i < 10; i++)
	{
		float force = gravity(10,20,i);
		float errorC = fabsf(force - goldRef[i]);
		error = error + errorC;
		printf("%d) Force:%f Ref:%f Diff: %f\n", i+1,force,goldRef[i],errorC);
		if(errorC>1)
		{
			printf("Error too big\n");
			return 1;
		}
	}
	printf("No error occured average error: %f\n", error/10.0f);
	return 0;
}
