#include<iostream>
#include<vector>
#include<ctime>

using namespace std;

vector<int> selection_sort(vector<int> a){
    for(int i=0;i<a.size();i++){
        int min=i;
        for(int j=i+1;j<a.size();j++)
                if(a[j]<a[min])
                    min=j;
    swap(a[i],a[min]);
    }
    return a;
}

int  main(){
    int n;
    vector<int> arr;
    clock_t start,end;
    cout<<"Enter no of elements:";
    cin>>n;
    cout<<"Elements Before Sorting:";
    for(int i=0;i<n;i++){
        arr.push_back(rand()%100+1);
        cout<<arr[i]<<" ";
    }
    start=clock();
    arr=selection_sort(arr);
    end=clock();
    cout<<endl<<"Elements After Sorting:";
    for(int i=0;i<n;i++){
        cout<<arr[i]<<" ";
    }
    cout<<endl<<"Time taken:"<<difftime(end,start)/CLOCKS_PER_SEC<<" seconds";
}