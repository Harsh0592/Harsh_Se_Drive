/*Define a class to represent a bank account. Include the following members:
1. Data Member:
-Name of the depositor
-Account Number
-Type of Account
-Balance amount in the account
2. Member Functions
-To assign values
-To deposited an amount
-To withdraw an amount after checking balance
-To display name and balance*/

#include <iostream>
#include <string>

class BankAccount {


public:
	std::string depositorName;
    long long accountNumber;
    std::string accountType;
    double balance;
    void assignValues(const std::string& name, long long accNumber, const std::string& accType, double initialBalance) {
        depositorName = name;
        accountNumber = accNumber;
        accountType = accType;
        balance = initialBalance;
    }
    void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
            std::cout << "Amount deposited successfully. New balance: " << balance << std::endl;
        } else {
            std::cout << "Invalid amount for deposit." << std::endl;
        }
    }
    void withdraw(double amount) {
        if (amount > 0 && balance >= amount) {
            balance -= amount;
            std::cout << "Amount withdrawn successfully. New balance: " << balance << std::endl;
        } else {
            std::cout << "Insufficient funds or invalid amount for withdrawal." << std::endl;
        }
    }
    void displayInfo() const {
        std::cout << "Account Holder: " << depositorName << std::endl;
        std::cout << "Account Number: " << accountNumber << std::endl;
        std::cout << "Account Type: " << accountType << std::endl;
        std::cout << "Current Balance: " << balance << std::endl;
    }
};

int main() {
    BankAccount myAccount;
    myAccount.assignValues("Harsh", 123456789, "Savings", 1000.0);
    std::cout << "Initial Account Information:" << std::endl;
    myAccount.displayInfo();
    myAccount.deposit(500.0);
    myAccount.withdraw(200.0);
    std::cout << "\nUpdated Account Information:" << std::endl;
    myAccount.displayInfo();

    return 0;
}

