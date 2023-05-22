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

// Define a class SavingsAccount that extends the Account class
class SavingsAccount extends Account {
  late double interstRate;

  @override
  double withdraw(double amount) {
    return this.balance += (this.balance - amount) * interstRate;
  }
}

// Define a class CurrentAccount that extends the Account class.
class CurrentAccount extends Account {
  late double overdraftLimit;
  @override
  double withdraw(double amount) {
    if (amount <= this.overdraftLimit) {
      return this.balance = this.balance - amount;
    } else {
      print('insufficient fund');
    }
    return this.balance;
  }
}
