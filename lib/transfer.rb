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

  end

  def reverse_transfer
    #binding.pry
    if receiver.status = "rejected" && sender.status = "rejected"
    "Transaction rejected. Please check your account balance."
    end
  end


end



