class Transfer
  attr_accessor :status
  attr_reader :amount, :sender, :receiver
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if sender.valid? && receiver.valid?
      return true 
    else 
      false 
    end
  end
  
  def execute_transaction
    receiver.balance += @amount
    sender.balance -= @amount 
    @status = "complete"
  end
    
end
