package A;

public class Program {
    public int divide(int a, int b) {
        return a / b;  // might throw ArithmeticException if b == 0
    }

    public static void main(String[] args) {
        Program p = new Program();
        System.out.println("Result: " + p.divide(10, 2));  // Output: 5
    }
}