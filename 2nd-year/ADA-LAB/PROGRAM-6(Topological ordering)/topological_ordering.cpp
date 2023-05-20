#include<iostream>

using namespace std;

int visited[30],a[30][30],order[30];
int top=0;

void topo(int v,int n){
    order[top++]=v;
    visited[v]=1;
    for(int i=0;i<n;i++){
        if(a[v][i] && !visited[i]){
            topo(i,n);
        }
    }
}

int main(){
    int n;
    cout<<"Enter no of nodes:";
    cin>>n;
    cout<<"Enter Adjacency matrix:";
    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            cin>>a[i][j];
        }
    }
    for(int i=0;i<n;i++){
        if(!visited[i])
            topo(i,n);
    }
    cout<<"Topological order:";
    for(int i=top-1;i>=0;i--){
        cout<<" v"<<order[i]+1;
    }
    cout<<endl;
    
}