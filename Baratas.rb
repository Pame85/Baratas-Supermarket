
# Running program begins here.

puts "Welcome to Baratas Mall ! Please Enter Your Name."
name = gets
puts "Hi #{name}" 
items = [{shampoo: 19.19, tooth paste: 5.17, tooth brush: 3.99, body shower: 6.89}]
puts "Items Listing: #{items}"

def purchase_items (items)
  purchased_items = input
  input = get_input.split(',').map(&:strip)
end 

def get_input
  puts "Please enter all the items purchased separated by a comma"
  response = gets.chomp
end

def calculate_bill(quantity)
  quantity.map do |items|
  items = Item.all[items]
  quantity[items] * items
  puts "#{items.ljust(10)}"
end


    Items_listing = [{shampoo: 19.19, tooth paste: 5.17, tooth brush: 3.99, body shower: 6.89}]
    quantity_map(Items_to_reverse)
    reverse_map(array_to_quantity)