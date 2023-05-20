#include<iostream>

using namespace std;

int order[20],visited[20],a[20][20];
int top=0;

void dfs(int v,int n){
    order[top++]=v;
    visited[v]=1;
    for(int i=0;i<n;i++){
        if(a[v][i] && !visited[i])
            dfs(i,n);
    }
}

int main(){
    int n, s,flag=0;
    cout<<"Enter no of nodes:";
    cin>>n;
    cout<<"Enter Adjacency matrix:";
    for(int i=0;i<n;i++){
        for(int j=0;j<n;j++){
            cin>>a[i][j];
        }
    }
    cout<<"Enter starting vertex:";
    cin>>s;
    dfs(s-1,n);
    cout<<"Order of Traversing: v"<<s;
    for(int i=0;i<top;i++){
        cout<<" v"<<order[i]+1;
    }
    cout<<endl;
    for(int i=0;i<n;i++){
        if(visited[i]){
            flag=1;
        }
    }
    if(flag){
        cout<<"Graph connected"<<endl;
    }else{
        cout<<"Graph not connected"<<endl;
    }
}