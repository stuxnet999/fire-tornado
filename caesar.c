#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int main(int argc, char *argv[])
{
	if(argc==2)
	{	
		char caesar[100];
		int i=0,rot=13;
		char k[100];
		strcpy(k, argv[1]);		
		while((k[i]) != '\0')
		{

			caesar[i]= (char)((int)k[i]+rot);
			i++;
		}
	
		caesar[i] =0;
	
		printf("%s\n",caesar);
		return 0;
	}
}

	

	

