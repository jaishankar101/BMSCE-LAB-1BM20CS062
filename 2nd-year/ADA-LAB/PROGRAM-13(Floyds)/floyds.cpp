#include<iostream>
using namespace std;
int a[10][10];
int inf= 99;

void floyds(int n){
    int k=0;
    for(k=1;k<=n;k++)
    
        for(int i=1;i<=n;i++)
            for(int j=1;j<=n;j++)
                a[i][j]=min(a[i][j],(a[i][k]+a[k][j]));
}

int main(){
    int n;
    cout<<"Enter n: ";
    cin>>n;
    cout<<"Enter Weight matrix: ";
    for(int i=1;i<=n;i++)
        for(int j=1;j<=n;j++){
            cin>>a[i][j];
            if(a[i][j]==-1)
                a[i][j]=inf;
        }
    floyds(n);
    cout<<"Distance matrix: "<<endl;
    for(int i=1;i<=n;i++){
        for(int j=1;j<=n;j++){
            if(a[i][j]>=inf)
                cout<<(-1)<<" ";
            else                
                cout<<a[i][j]<<" ";
        }
        cout<<endl;
    }
}     
