require_relative '../config/environment'

# app = nameOfYourApp.new
# app.run

arr_of_arrs = CSV.read("db/banks.csv")

arr_of_arrs.shift

converted_array = []

arr_of_arrs.each do |array|
    converted_array << {:bank_name => array[0], :address => array[1], :city => array[2], :zipcode => array[3], :county => array[4]}
end

converted_array.first
# returns a hash, can probably use for mass creating with enumerator.
# {:bank_name=>"Abacus Federal Savings Bank", :address=>"5518 8th Avenue", :city=>"Brooklyn", :zipcode=>"11220", :county=>"Kings"}

binding.pry
0