class Pi {

    static void printValueOfPi(int N)
    {

        // Find value of pi upto 
        // using acos() function 
        double pi = 2 * Math.acos(0.0);

        System.out.println(pi);
    }
    public static void main (String[] args)
    {
        int N = 4;

        // Function that prints 
        // the value of pi 
        printValueOfPi(N);
    }
}
