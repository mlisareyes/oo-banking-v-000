class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    self.status = 'pending'
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction

    #need successful transaction between two accounts
    #can only happen once
    #rejects transfer if sender doesn't have a valid account
  end

end
