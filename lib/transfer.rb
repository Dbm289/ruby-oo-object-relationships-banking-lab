class Transfer
  
  attr_accessor :amount, :sender, :receiver, :status
  
  def initialize( sender, receiver, amount)
    
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
    

  end

  def valid?
    @sender = "open" && @receiver == "open"

  end

end
