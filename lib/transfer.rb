require 'pry'
class Transfer
  attr_accessor :status,:sender,:receiver,:amount

  # your code here
  def initialize(sender,receiver,amount)
    @amount = amount
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end

  def valid?  
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if self.valid? && sender.balance > amount && self.status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  
  def reverse_transfer
    if self.valid? && receiver.balance > amount && self.status == "complete"
      receiver.balance -= amount
      sender.balance += amount
      self.status = "reversed"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

end