#include<sys/types.h>
#include<sys/stat.h>
#include<string.h>
#include<fcntl.h>
#include<stdio.h>
#include<unistd.h>
int main(int argc, char *argv[]){
    char buf[100];
    int fd,n;
    mkfifo(argv[1], S_IFIFO |0777);
    if(argc==3)
    {
        fd=open(argv[1], O_WRONLY);
        write(fd, argv[2], strlen(argv[2]));
        close(fd);
    }
    if(argc==2)
    {
        fd=open(argv[1], O_RDONLY);
        n=read(fd, buf, sizeof(buf));
        buf[n]='\0';
        printf("%s",buf);
        close(fd);
    }
}