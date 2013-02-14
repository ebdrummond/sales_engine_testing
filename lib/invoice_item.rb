require 'csv'
require 'time'
 
class InvoiceItem

  attr_reader :id, :item_id, :invoice_id, :quantity, :unit_price, :created_at, :updated_at

  def initialize(input)
    puts input
    @id = input["id"]
    @item_id = input["item_id"]
    @invoice_id = input["merchant_id"]
    @status = input["status"]
    @created_at = Time.parse(input["created_at"])
    @updated_at = Time.parse(input["updated_at"])
  end

end