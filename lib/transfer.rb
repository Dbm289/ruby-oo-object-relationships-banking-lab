require 'pry'

class Transfer
  
  attr_accessor :amount, :sender, :receiver, :status, :last_transaction
  
  def initialize( sender, receiver, amount)
    
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
    

  end

  def valid?
    #binding.pry
    @sender.valid?
    @receiver.valid?

  end

  def execute_transaction
#binding.pry
    if @status == "pending" && valid? && @sender.balance > @amount
      @sender.deposit(-(amount)) && @receiver.deposit(amount)
    @status = "complete"
    @last_transaction = @amount
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
    


  end

  def reverse_transfer
    if @status == "complete"
    @receiver.balance -= @last_transaction
    @sender.balance += @last_transaction
    @status = "reversed"
    end
    
  end

end
