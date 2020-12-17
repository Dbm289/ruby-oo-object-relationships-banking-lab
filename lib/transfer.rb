require 'pry'

class Transfer
  
  attr_accessor :amount, :sender, :receiver, :status
  
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
    deposit


  end

  def reverse_transfer

  end

end
