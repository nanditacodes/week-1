our_array = []
our_array << "nan"
our_array << "raj"
our_array << "bbq"
our_array << "bbq"
our_array.push "golf"

puts our_array

puts "finding bbq"


# found_item = :not_found
# our_array.each do |word|
#   found_item = word if word == "bbq"
# end
# puts found_item


items = our_array.select do |item|
  item == "bbq"
end

#puts items.inspect


# items = our_array.reject do |item|
#   item == "bbq"
# end

# array = (1...100).find do |i|
#   i.even?
# end
#puts array

new_array = our_array.map do |item|
  item.upcase
end


puts "ORIGINAL"
puts our_array
puts "_________"
puts "NEW ARRAY"
puts "--------"
puts new_array
