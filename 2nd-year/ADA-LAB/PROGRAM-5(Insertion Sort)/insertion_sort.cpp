#include<iostream>
#include<vector>
#include<ctime>


using namespace std;

vector<int> insertion_sort(vector<int> a){
    int j,temp;
    for(int i=1;i<a.size();i++){
        j=i-1;
        temp=a[i];
        while(j>=0 && a[j]>temp){
            a[j+1]=a[j];
            j--;
        }
        a[j+1]=temp;
    }
    return a;
}

int  main(){
    int n;
    vector<int> a;
    clock_t start,end;
    cout<<"Enter no of elements:";
    cin>>n;
    cout<<"Before Sorting:";
    for(int i=0;i<n;i++){
        a.push_back(rand()%100+1);
        cout<<a[i]<<" ";
    }
    start=clock();
    a=insertion_sort(a);
    end=clock();
    cout<<endl<<"After Sorting:";
    for(int i=0;i<n;i++){
        cout<<a[i]<<" ";
    }
    cout<<endl<<"Time taken:"<<difftime(end,start)/CLOCKS_PER_SEC<<" seconds";
}