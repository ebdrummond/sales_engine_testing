require 'csv'
require 'time'


class Transactions
  attr_reader :id, :invoice_id, :credit_card_number, :credit_card_expiration_date, :result, :created_at, :updated_at

  def initialize(input)
    puts input
    @id = input["id"]
    @invoice_id = input["invoice_id"]
    @credit_card_number = input["credit_card_number"]
    @credit_card_expiration_date = input["credit_card_expiration_date"]
    @result = input["result"]
    @created_at = Time.parse(input["created_at"])
    @updated_at = Time.parse(input["updated_at"])
  end

  def to_s
    "#{@id} #{@invoice_id} #{@credit_card_number} #{@credit_card_expiration_date} #{@result} #{@created_at} #{@updated_at}"
  end

 #  def self.load
 #    @invoices = LoadFiles.new.load_invoices_file
 #    puts @invoices
 # end

  # def self.all
  #   @invoices
  # end
end

# transactions & invoice_items