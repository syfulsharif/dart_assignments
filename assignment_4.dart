// Define an abstract class Account
abstract class Account {
  late int accountNumber;
  late double balance;
  double deposit(double amount) {
    return this.balance + amount;
  }

  //absract method
  double withdraw(double amount);
}
