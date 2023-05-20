#include<iostream>
using namespace std;
int a[30][30];

void warshall(int n){
    for(int k=1;k<=n;k++)
        for(int i=1;i<=n;i++)
            for(int j=1;j<=n;j++)
                a[i][j]=a[i][j]|| (a[i][k] && a[k][j]);
}

int main(){
    int n;
    cout<<"Enter no of vertices: ";
    cin>>n;
    
    cout<<"Enter adjacency matrix: ";
    for(int i=1;i<=n;i++)
        for(int j=1;j<=n;j++)
            cin>>a[i][j];
    warshall(n);
    cout<<"Transitive Closure: "<<endl;
    for(int i=1;i<=n;i++){
        for(int j=1;j<=n;j++)
            cout<<a[i][j]<<" ";
        cout<<endl;
    }
}
