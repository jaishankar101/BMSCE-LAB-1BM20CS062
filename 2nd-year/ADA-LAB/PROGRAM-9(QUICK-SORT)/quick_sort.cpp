#include<iostream>
#include<ctime>
using namespace std;

int partition(int a[],int low,int high){
    int i=low+1;
    int j=high;
    int pivot=a[low];
    while(1){
        while(a[i]<=pivot && i<=high){i++;}
        while(a[j]>pivot && j>=low){j--;}
        if(i<j){
           swap(a[i],a[j]);
        }
        else{
            a[low]=a[j];
            a[j]=pivot;
            return j;
        }
    }
}

void quicksort(int a[],int low,int high){
    if(low<high){
        int pt=partition(a,low,high);
        quicksort(a,low,pt-1);
        quicksort(a,pt+1,high);
    }
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
    quicksort(arr,0,n-1);
    end=clock();
    cout<<endl<<"Sorted Elements:";
    for(int i=0;i<n;i++){
        cout<<arr[i]<<" ";
    }
    cout<<endl<<"Time taken:"<<difftime(end,start)/CLOCKS_PER_SEC<<" seconds";
}