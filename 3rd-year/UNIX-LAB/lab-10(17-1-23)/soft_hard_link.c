#include<unistd.h>
#include<stdio.h>
#include<string.h>

int main(int argc,char* argv[]){
    if(argc<3 || argc>4){
        printf("enter two comments");
        return -1;
    }
    if(argc==4 && strcmp(argv[1],"-s")!=0){
        printf("for softlink use -s");
        return -1;
    }
    if(argc==4 && access(argv[2],F_OK)==-1){
        printf("source file does\'t exist");
        return -1;
    }
    if(argc==3 && access(argv[1],F_OK)==-1){
        printf("source file does\'t exist");
        return -1;
    }
    if(argc==4){
        symlink(argv[2],argv[3]);
        printf("symbolic link is created");
        return 0;
    }
    if(argc==3){
        symlink(argv[1],argv[2]);
        printf("hardlink link is created");
        return 0;
    }
}