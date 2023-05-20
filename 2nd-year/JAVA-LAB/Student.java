import java.util.*;


class sgpa_calc
{
    private String name,usn;
    private int[] credits;
    private double[] marks;
    private int totalcredits=0,n,i;
    private double sgpa=0;
    Scanner sc=new Scanner(System.in);
    void getdata()
    {
        System.out.println("\nEnter the name of the Student:");
        name=sc.nextLine();
        System.out.println("\nEnter the Student USN:");
        usn=sc.nextLine();
        System.out.println("\nEnter the no. of subjects :");
        n=sc.nextInt();
        marks =new double[n];
        credits=new int[n];
        for(i=0;i<n;i++)
        {
            System.out.println("\nEnter Subject " +(i+1)+" marks  and  Credits:");
            marks[i]=sc.nextInt();
            credits[i]=sc.nextInt();
            calculate(marks[i],credits[i]);
        }
        sgpa=sgpa/totalcredits;               
    }
    void calculate(double mark,int credit)
    {
        totalcredits=totalcredits+credit;
        if(mark>=90)
        sgpa=sgpa+credit*10;
        else if(mark>=80)
        sgpa=sgpa+credit*9;
        else if(mark>=70)
        sgpa=sgpa+credit*8;
        else if(mark>=60)
        sgpa=sgpa+credit*7;
        else if(mark>=50)
        sgpa=sgpa+credit*6;
        else if(mark>=40)
        sgpa=sgpa+credit*5;
        else
        return;
    }
    void display()
    {
        System.out.println("\nStudent Name:"+name+"\nStudent USN:"+usn+"\nStudent SGPA:"+sgpa);
    }

}


class Student
{
    public static void main(String args[])
    {
        sgpa_calc s =new sgpa_calc();
        s.getdata();
        s.display();
    }
}