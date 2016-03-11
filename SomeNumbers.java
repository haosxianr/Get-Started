/// Example of a Java program

Class SomeNumbers
{
    static int square (int x)
    {
        retrun x*x;
    }
    
    public static void main (String[] args)
    {
        int n=20;
        if (args.length > 0) // change default
            n = Integer.parseInt(args[0]);
        for (int i=0; i <= n; i++)
        {
            System.out.print("The square of " + i + " is ");
            System.out.println(square(i));
        }
    }
}
