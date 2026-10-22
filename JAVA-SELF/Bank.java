public class Bank {

    // 1. Create account
    static void createAccount(String name) {
        System.out.println("Account created for " + name);
    }

    // 2. Deposit money
    static void deposit(int amount) {
        System.out.println("Deposited: " + amount);
    }

    // 3. Withdraw money
    static void withdraw(int amount) {
        System.out.println("Withdrawn: " + amount);
    }

    // 4. Check balance
    static int getBalance() {
        return 5000;
    }

    // 5. Display account
    static void showAccount(String name, int balance) {
        System.out.println("Name: " + name);
        System.out.println("Balance: " + balance);
    }

    // Program starts here
    public static void main(String[] args) {

        createAccount("Lakshay");

        deposit(2000);

        withdraw(500);

        int balance = getBalance();

        showAccount("Lakshay", balance);
    }
}
