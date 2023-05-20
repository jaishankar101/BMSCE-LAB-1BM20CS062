#include <iostream>
 
using namespace std;
 
int max(int a, int b)
{
    return (a > b) ? a : b;
}
 
 
int knapSack(int w, int wt[], int val[], int n)
{

    int K[n + 1][w + 1];
 
    for (int i = 0; i <= n; i++)
    {
        for (int j = 0; j <= w; j++)
        {
            if (i == 0 || j == 0)
                K[i][j] = 0;
            else if (wt[i - 1] <= j)
                K[i][j] = max(val[i - 1] + K[i - 1][j - wt[i - 1]], K[i - 1][j]);
            else
                K[i][j] = K[i - 1][j];
        }
    }
 
    return K[n][w];
}
 
int main()
{
    cout << "Enter the number of items in a Knapsack:";
    int n, w;
    cin >> n;
    int val[n], wt[n];
    for (int i = 0; i < n; i++)
    {
        cout << "Enter value and weight for item " << i+1 << ":";
        cin >> val[i];
        cin >> wt[i];
    }
 
    cout << "Enter the capacity of knapsack: ";
    cin >> w;
    cout << knapSack(w, wt, val, n);
 
    return 0;
}
