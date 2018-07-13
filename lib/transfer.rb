class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    self.status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if valid? && sender.balance > amount && self.status = "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      bad_transfer
    end
  end

  def reverse_transfer
    if valid? && receiver.balance > amount && self.status = "complete"
  end

  def bad_transfer
    self.status = "pending"
    "Transaction rejected. Please check your account balance."
  end

end
