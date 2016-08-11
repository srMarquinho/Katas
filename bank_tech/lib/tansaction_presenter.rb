# class TransactionPresenter
#
#   attr_reader :transactions, :balance
#
#   def initialize
#     @transactions = {}
#     @balance = 0
#   end
#
#   def stringify_transactions(dates, credits, debits, balance)
#     "#{dates} || #{credits} || #{debits} || #{balance}\n"
#   end
#
#   def format_transactions
#     result = []
#     @transactions.each do |date, amount|
#       if amount < 0
#         @balance += amount
#         result << stringify_transactions(date, "", amount.abs, @balance)
#       else
#         @balance += amount
#         result << stringify_transactions(date, amount, "", @balance)
#       end
#     end
#     result.reverse.join
#   end
#
#   def printer
#     "date || credit || debit || balance\n" + format_transactions
#   end
# end
