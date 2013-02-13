require 'csv'
require 'lib/invoice'

class LoadFiles

 def load_invoices_file
    invoices_file = CSV.open("../data/test_invoices.csv", headers: true, header_converters: :symbol)
    invoices_data = []

    invoices_file.each do |row|
      invoices_data.push(Invoice.new(row))
    end
    return invoices_data
  end

end
