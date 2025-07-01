require_relative 'transaction_processor'

class DisplayManager
  include TransactionFormattable

  def initialize(transaction_processor)
    @transaction_processor = transaction_processor
  end

  def format_product_list(products)
    result = "Available Products:"

    products.each do |code, product| 
      if product[:stock] > 0
        result += "\n#{code} - #{product[:name]} - #{product[:price]}"
      end
    end

    result
  end

  def format_transaction_result(product_name, change)
    basic_result = "Dispensed #{product_name}"
    last_transaction = @transaction_processor.last_transaction_details
    
    "#{basic_result} with change #{change}"
  end
end
