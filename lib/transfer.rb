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
    ApplicationRecord.transaction do
    receiver.update!(money: receiver.money + 50)
    sender.update!(money: sender.money - 50)
  end
  #need successful transaction between two accounts
    #can only happen once
    #rejects transfer if sender doesn't have a valid account

  end


end
