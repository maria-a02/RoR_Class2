#BankAccount
class BankAccount
    attr_accessor :bank, :account, :balance
        def initialize(bank, account, balance = 0)
        @bank = bank
        @account = account
        @balance = balance
    end
    def transfer(account, amount)
        @balance = @balance - amount
        account.balance = account.balance + amount
    end
end

acno1 = BankAccount.new('ScotiaBank', '12345678', 5000)
acno2 = BankAccount.new('Estado', '17681785', 5000)
acno3 = BankAccount.new('BCI', '98765432', 12000)

#Transfer 5000 from acno1 to acno2.
puts "El nuevo saldo en la cuenta #{acno2.account} del Banco #{acno2.bank} es $#{acno1.transfer(acno2, 5000)}."
puts "El saldo restante en la cuenta #{acno1.account} del Banco #{acno1.bank} es $#{acno1.balance}."

#User. The account variables will be stored in the array "accounts".
class User
    attr_accessor :name, :accounts
    def initialize(name, accounts)
        @name = name
        @accounts = accounts
    end
    def final_balance(accounts)
        final_balance = 0
        @accounts.each do |a|
        final_balance = final_balance + a.balance
        end
        final_balance
    end
end

user1 = User.new('Luis', [acno3, acno2])
puts "El cliente #{user1.name} tiene un saldo total de $#{user1.final_balance([acno3, acno2])}."