module CashflowsHelper


  def currency_amount(trans)
    number_to_currency(trans.amount)
  end


end
