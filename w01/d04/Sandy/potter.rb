require 'csv'
csv = CSV.read('potter.csv', :headers => true, :header_converters => :symbol)

print csv[:names]

f.close

