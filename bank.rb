# Design a class BankAccount with attributes account_number, balance, and methods to transfer money to another account. 
# Implement methods to add accounts, deposit money, withdraw money, and check balances.

require 'colorize'
class BankAccount
    attr_accessor :account_number, :balance

    def initialize(account_number, balance)
        @account_number = account_number
        @balance = balance
        puts "Account: #{account_number} | Balance: RM #{@balance}".light_red
    end

    def display_account_details
        puts "Account: #{account_number} | Balance: RM #{@balance}".light_green
    end

    def transfer_money(amount, target_account)
        if @balance >= amount
            @balance -= amount
            target_account.balance += amount
            puts "Transferred RM #{amount} to #{target_account.account_number}".cyan
        else
            puts "Not enough funds"
        end
    end

    def deposit(amount)
        @balance += amount
        puts "Deposited RM #{amount}".light_blue
        check_balance
    end

    def withdraw(amount)
        if @balance >= amount
            @balance -= amount
            puts "Withdrew RM #{amount}".light_cyan
            check_balance
        else
            puts "Withdraw insufficient funds".red
        end
    end

    def check_balance
        puts "Balance: RM #{@balance}".green
    end
end

account1 = BankAccount.new("848293919494", 5920)
account1.deposit(500)
account1.withdraw(9999)
account1.withdraw(300)

puts "-------------------------------------"

account2 = BankAccount.new("374856283923", 2053)
account2.deposit(350)
account2.withdraw(4000)
account2.withdraw(230)

puts "------------------------------------"

account1.display_account_details
account1.transfer_money(600, account2)
account1.display_account_details
account2.display_account_details