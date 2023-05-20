#include<iostream>
#include<ctime>
using namespace std;

void merge(int left[],int l,int right[],int r,int a[]){
    int i=0,j=0,k=0;
    while(i<l && j<r){
        if(left[i]<right[j]){
            a[k]=left[i];
            i++;
        }
        else{
            a[k]=right[j];
            j++;
        }
        k++;
    }
    while(i<l){
        a[k]=left[i];
        i++;
        k++;
    }
    while(j<r){
        a[k]=right[j];
        j++;
        k++;
    }
}


void mergesort(int a[],int len){ 
    if(len<=1)
    return;
    int mid=len/2;
    int left[mid],right[len-mid];
    for(int i=0;i<mid;i++)
        left[i]=a[i];
    for(int i=0;i<len-mid;i++)
        right[i]=a[mid+i];
    mergesort(left,mid);
    mergesort(right,len-mid);
    merge(left,mid,right,len-mid,a);
}


int main(){
    int n;
    clock_t start,end;
    cout<<"Enter n:";
    cin>>n;
    int arr[n];
    cout<<"Before Sorting:";
    for(int i=0;i<n;i++){
        arr[i]=(rand()%100+1);
        cout<<arr[i]<<" ";
    }
    start=clock();
    mergesort(arr,n);
    end=clock();
    cout<<endl<<"Sorted Elements:";
    for(int i=0;i<n;i++){
        cout<<arr[i]<<" ";
    }
    cout<<endl<<"Time taken:"<<difftime(end,start)/CLOCKS_PER_SEC<<" seconds";
}