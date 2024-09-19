// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank {
    int private balance;

    // Deposit function
    function deposit(int amount) public returns (string memory) {
        balance += amount; // Update the balance
        return "Deposit successful.";
    }

    // Withdraw function
    function withdraw(int amount) public returns (string memory) {
        if (amount > balance) {
            return "Insufficient balance";
        } else {
            balance -= amount;
            return "Withdrawal successful. New balance: " ;
        }
    }

    // Function to show balance
    function showBalance() public view returns (int) {
        return balance;
    }

    
}
