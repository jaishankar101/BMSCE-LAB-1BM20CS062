#include<iostream>

using namespace std;

int getpos(int a[],int n,int mob){
    for(int i=1;i<=n;i++){
        if(a[i]==mob)
            return i;
    }
    return 0;
}

int getmobile(int a[],bool dir[],int n){
    int mobile=0;
    for(int i=1;i<=n;i++){
        if(dir[a[i]]==false && i!=1){
            if(a[i]>a[i-1] && a[i]>mobile){
                mobile=a[i];
            }
        }
        if(dir[a[i]]==true && i!=n){
            if(a[i]>a[i+1] && a[i]>mobile){
                mobile=a[i];
            }
        }
    }
    return mobile;
}

void printpermutation(int a[],bool dir[],int n){
    int mobile=getmobile(a,dir,n);
    int pos=getpos(a,n,mobile);
    (dir[a[pos]]) ?  swap(a[pos+1],a[pos]):swap(a[pos],a[pos-1]);
    for(int i=1;i<=n;i++){
        if(a[i]>a[pos]){
            dir[a[i]]=(dir[a[i]]) ? false:true;
        }
        cout<<a[i];
    }
    cout<<" ";
}

int fact(int n){
    if(n==1)return 1;
    else return fact(n-1)*n;
}

int main(){
    int n;
    cout<<"Enter no of elements:";
    cin>>n;
    int a[n];
    bool dir[n];
    for(int i=1;i<=n;i++){
        a[i]=i;
        dir[i]=false;
        cout<<a[i];
    }
    cout<<" ";
    for(int i=1;i<fact(n);i++){
        printpermutation(a,dir,n);
    }
}