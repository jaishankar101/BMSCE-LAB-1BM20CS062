#include<iostream>

using namespace std;

void towerh(int n,char A,char B,char C){
    if(n==1){
        cout<<"move disc from "<<A<<" to "<<C<<endl;
    }
    else{
        towerh(n-1,A,C,B);
        cout<<"move disc from "<<A<<" to "<<C<<endl;
        towerh(n-1,B,A,C);
    }
}

int main(){
    int n;
    cout<<"Enter the number of disks\n";
    cin>>n;
    towerh(n,'a','b','c');
}