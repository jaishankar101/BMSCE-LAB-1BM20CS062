#include<iostream>
#include<vector>
#include<ctime>

using namespace std;

int linear_search(int arr[],int low,int high,int key){
    if(low>high)
        return -1;
    if(arr[low]==key)
        return low;
    if(arr[high]==key)
        return high;
    else
        return linear_search(arr,low+1,high-1,key);
}

void sort(int a[],int n){
    for(int i=0;i<n;i++){
        for(int j=0;j<n-i;j++)
        {
            if(a[j]>a[j+1])
                swap(a[j+1],a[j]);
        }
    }
}

int binary_search(int arr[],int low,int high,int key){
    sort(arr,high+1);
    if(low>high)
        return -1;
    int mid=(low+high)/2;
    if(arr[mid]==key)
        return mid;
    else if(key>arr[mid])
        return binary_search(arr,mid+1,high,key);
    else
        return binary_search(arr,low,mid-1,key);
}

int main(){
     int n;
    clock_t start,end;
    cout<<"Enter n:";
    cin>>n;
    int arr[n];
    cout<<"Elements:";
    for(int i=0;i<n;i++){
        arr[i]=i+1;
        cout<<arr[i]<<" ";
    }
    cout<<endl<<"Search Element?";
    int key=rand()%n+1;
    cout<<key;
    cout<<"\n----Linear Search----\n";
    cout<<"Element Index:";
    start=clock();
    cout<<linear_search(arr,0,n-1,key);
    end=clock();
    
    cout<<endl<<"Time taken:"<<difftime(end,start)/CLOCKS_PER_SEC<<" seconds";
    cout<<"\n----Binary Search----\n";
    cout<<"Element Index:";
    start=clock();
    cout<<binary_search(arr,0,n-1,key);
    end=clock();
    cout<<endl<<"Time taken:"<<difftime(end,start)/CLOCKS_PER_SEC<<" seconds";
    
}