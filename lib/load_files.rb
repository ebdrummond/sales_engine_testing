require 'csv'
require_relative 'invoice'

class LoadFiles

 def load_invoices_file
    invoices_file = CSV.open("../data/test_invoices.csv", headers: true)
    invoices_data = []

    invoices_file.each do |row|
      invoice = Invoice.new(row)
    end
  end
end

LoadFiles.new.load_invoices_file



  # invoices_data.add(Invoice.new(row))
