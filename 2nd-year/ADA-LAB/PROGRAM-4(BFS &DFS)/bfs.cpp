#include<iostream>

using namespace std;

int order[20],visited[20],a[20][20];
int l=0,r=0;

void bfs(int v,int n){
    for(int i=0;i<n;i++){
        if(a[v][i] && !visited[i]){
            order[r++]=i;
            visited[i]=1;
        }
    }
    if(l<=r){
        bfs(l++,n);
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
    visited[s-1]=1;
    bfs(s-1,n);
    cout<<"Order of Traversing: v"<<s;
    for(int i=0;i<r;i++){
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