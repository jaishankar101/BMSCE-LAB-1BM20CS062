import java.util.*;
class quadroot
{
public static void main(String args[])
{
int res,a,b,c;
double val,r1,r2;
Scanner sc=new Scanner(System.in);
System.out.println("enter the value a,b and c:");
a=sc.nextInt();
b=sc.nextInt();
c=sc.nextInt();
val=b*b-4*a*c;
if(val>0)
res=1;
else if(val==0)
res=0;
else 
res=-1;
switch(res)
{
    case 1:System.out.println("roots are real");
    r1=((-1*b)+(double)(Math.sqrt(val)))/2*a;
    r2=((-1*b)-(double)(Math.sqrt(val)))/2*a;
    System.out.println("root1="+r1+"\nroot2="+r2); 
    break;
    case 0:System.out.println("roots are real and equal");
    r1=(-1*b)/2*a;
    System.out.println("root="+r1); 
    break;   
    case -1:System.out.println("roots are imaginary");
    r1=(-1*b)/2*a;
    r2=(double)(Math.sqrt(-1*val))/2*a;
    System.out.println("root1="+r1+"+i"+r2);
    System.out.println("root2="+r1+"-i"+r2);
    break;
    default:System.out.println("INVALID CHOICE");
    break;
}
}
}