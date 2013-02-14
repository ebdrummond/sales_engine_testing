require 'csv'
require 'time'
# require 'lib/load_files'


class Customer
  attr_reader :id, :first_name, :last_name, :created_at, :updated_at

  def initialize(input)
    puts input
    @id = input["id"]
    @first_name = input["first_name"]
    @last_name = input["last_name"]
    @created_at = Time.parse(input["created_at"])
    @updated_at = Time.parse(input["updated_at"])
  end

  def to_s
    "#{@id} #{@first_name} #{@last_name} #{@created_at} #{@updated_at}"
  end


 #  def self.load
 #    @invoices = LoadFiles.new.load_invoices_files
 #    puts @invoices
 # end

 #  def self.all
 #    @invoices
 #  end

end