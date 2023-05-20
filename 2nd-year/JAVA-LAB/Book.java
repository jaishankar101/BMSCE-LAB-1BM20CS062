/*Create a class Book which contains four members: name, author, price, num_pages. Include a
constructor to set the values for the members. Include methods to set and get the details of the
objects. Include a toString( ) method that could display the complete details of the book.
Develop a Java program to create n book objects.*/
import java.util.*;
class book{
    String name,author;
    double price;
    int num_pages;
    Scanner sc=new Scanner(System.in);
    book()
    {
        name="life of pie";
        author="Yann Martel";
        num_pages=336;
        price=300.00;
    }
    void get_data()
    {
        System.out.println("Enter the name of the book:");
        name=sc.nextLine();
        System.out.println("Enter the author of the book:");
        author=sc.nextLine();
        System.out.println("Enter the price of the book:");
        price=sc.nextDouble();
        System.out.println("Enter the num of pages in the book:");
        num_pages=sc.nextInt();
    }
    public String toString()
    {
        return("\n--BOOK DETAILS--\nBOOK NAME="+name+"\nBOOK AUTHOR="+author+"\nBOOK PRICE="+price+"\nNO.OF PAGES="+num_pages);
    }

}
class main
{
    
    public static void main(String args[])
    {
        int n;
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter the no of books:");
        n=sc.nextInt();
        book s[]=new book[n];
        book a=new book();
        for(int i=0;i<n;i++)
        {
            s[i]=new book();

        }
        for(int i=0;i<n;i++)
        {
            s[i].get_data();

        }
        for(int i=0;i<n;i++)
        {
            System.out.println(s[i]);
            

        }
        System.out.println(a);

    }
}