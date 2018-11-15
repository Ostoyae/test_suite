#include <unistd.h>

int main(void)
{
	char *ar[] = {"./ls"};
	execve(ar[0],ar, NULL);

	return (0);
}
