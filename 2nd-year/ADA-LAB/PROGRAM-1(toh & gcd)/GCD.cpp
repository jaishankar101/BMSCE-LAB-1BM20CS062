#include<iostream>

using namespace std;

int gcd(int m,int n){
    if(n==0)
        return m;
    return gcd(n,m%n);
}

int main()
{
    int a,b,c;
    cout<<"Enter two numbers: ";
    cin>>a>>b;
    c=gcd(a,b);
    cout<<"The gcd of two numbers is "<<c;    
}