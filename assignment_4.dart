// Define an abstract class Account
abstract class Account {
  late int accountNumber;
  late double balance;
  double deposit(double amount) {
    return this.balance = this.balance + amount;
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

  SavingsAccount(int accountNumber, double balance, this.interstRate) {
    this.accountNumber = accountNumber;
    this.balance = balance;
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

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit) {
    this.accountNumber = accountNumber;
    this.balance = balance;
  }
}

void main() {
  //Initializing Savings Account
  SavingsAccount mySB = SavingsAccount(1101, 25000.0, .05);
  mySB.deposit(5000);
  print(mySB.balance);
  mySB.withdraw(20000.0);
  print(mySB.balance);
  //Initializing Current Account
  CurrentAccount myCD = CurrentAccount(2001, 100000.0, 200000.0);
  myCD.deposit(30000.0);
  print(myCD.balance);
  myCD.withdraw(500000.0);
  myCD.withdraw(20000.0);
  print(myCD.balance);
}


// ● Create an instance of the SavingsAccount class by providing values for the account
// number, initial balance, and interest rate.
// ● Use the instance to perform operations like depositing and withdrawing money.
// ● Create an instance of the CurrentAccount class by providing values for the account
// number, initial balance, and overdraft limit.
// ● Use the instance to perform operations like depositing and withdrawing.
