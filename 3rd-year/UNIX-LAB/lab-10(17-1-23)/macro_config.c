#define _POSIX_SOURCE
#define _POSIX_C_SOURCE 199309L
#include<stdio.h>
#include<unistd.h>
int main()
{
#ifdef _POSIX_JOB_CONTROL
printf("System Supports Job Control feature\n");
#else
printf("System doesnot support job control\n");
#endif
#ifdef _POSIX_SAVED_IDS
printf("System Supports saved set-UID and saved set-GID\n");
#else
printf("System doesnot support saved set-UID\n");
#endif
#ifdef _POSIX_CHOWN_RESTRICTED
printf("System Supports Change Ownership feature:\n");
#else
printf("System doesnot support change Ownership feature\n");
#endif
#ifdef _POSIX_NO_TRUNC
printf("System Supports Path truncation option:\n");
#else
printf("System doesnot support Path truncation\n");
#endif
#ifdef _POSIX_VDISABLE
printf("System Supports Disable Character for files:\n");
#else
printf("System doesnot support Disable Characters\n");
#endif
return 0;
}

