class Account
   def initialize(name, balance = 0)
       @name = name
       @balance = balance
   end
   
   def withdraw(amount)
       @balance = @balance - amount
   end
   
   def deposit(amount)
       @balance = @balance + amount
   end
   
end



class Bank 
    
    
end