require 'csv'
require_relative 'invoice'
require_relative 'merchant'
require_relative 'item'
require_relative 'invoice_item'
require_relative 'transaction'
require_relative 'customers'

class LoadFiles

 def load_invoices_file
    invoices_file = CSV.open("../data/test_invoices.csv", headers: true)
    invoices_data = []

    invoices_file.each do |row|
      invoice = Invoice.new(row)
    end
  end

  def load_merchants_file
    merchants_file = CSV.open("../data/test_merchants.csv", headers: true)
    merchants_data = []

    merchants_file.each do |row|
      merchant = Merchant.new(row)
    end
  end

  def load_items_file
    items_file = CSV.open("../data/test_items.csv", headers: true)
    items_data = []

    items_file.each do |row|
      item = Item.new(row)
    end
  end

  def load_customers_file
    customers_file = CSV.open("../data/test_customers.csv", headers: true)
    customers_data = []

    customers_file.each do |row|
      customer = Customer.new(row)
    end
  end

  def load_invoice_items_file
    invoice_items_file = CSV.open("../data/test_invoice_items.csv", headers: true)
    invoice_items_data = []

    invoice_items_file.each do |row|
      invoice_item = InvoiceItem.new(row)
    end
  end

  def load_transactions_file
    transactions_file = CSV.open("../data/test_transactions.csv", headers: true)
    transactions_data = []

    transactions_file.each do |row|
      transaction = Transaction.new(row)
    end
  end


end

LoadFiles.new.load_invoices_file
LoadFiles.new.load_merchants_file
LoadFiles.new.load_customers_file
LoadFiles.new.load_invoice_items_file
LoadFiles.new.load_transactions_file
LoadFiles.new.load_items_file



  # invoices_data.add(Invoice.new(row))
