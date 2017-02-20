#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

/**
 * infinite_while - loops endlessly
 * Return: 0 on success
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - entry point
 * Return: 0 on success
 */
int main(void)
{
	int stat, i;
	pid_t zombie[5];

	for (i = 0; i < 5; i++)
	{
		zombie[i] = fork();
		if (zombie[i] == 0)
		{
			printf("Zombie process created, PID: %d\n", getpid());
			exit(0);
		}
	}
	sleep(100);
	while (--i > 0)
		zombie[i] = wait(&stat);
	infinite_while();

	return (0);
}
