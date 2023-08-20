# Running program begins here.
puts "Welcome to Baratas Mall ! Please Enter Your Name."
name = gets
puts "Hi #{name}"

puts "Let's Shoping! Yes (y) / No (n)"
reply = gets.chomp!.downcase

if reply == "n"
  # If user answers "n", end program here.
    puts "That's too bad. Bye!"
end
  
if reply != "n" && reply != "y"
  # If user types anything but "y" or "n", end program here.
    puts "I don't get it. Shutting down."
end
  
while reply == "y" do
    puts "Items Price listing:"    
    puts "{shampoo: 19.19, tooth paste: 5.17, tooth brush: 3.99, body shower: 6.89}"
       
    @@items = {}
    @@items[name] = price
    @@sale_items = {}
    @purchased_items = input
    @@items
    @@sale_items[name] = { 'units' => units, 'price' => price }
    @@sale_items
    @@item 
   
    #initiate_billing
    input = get_input.split(',').map(&:strip)
    @purchased_items = input
    if @purchased_items.any?
    quantity = count_items
    price = calculate_bill(quantity)
    display_bill(price, quantity)
    else 
    puts "First add items to generate bill"
    end
end

def get_input
    puts "Please enter all the items purchased separated by a comma"
    response = gets.chomp
end
    
def count_items
    purchased_items.inject(Hash.new(0)) do |quantity, item|
    quantity[item] += 1
    quantity
  end
end
    
def calculate_bill(quantity)
  quantity.map do |item,value|
    items = Item.all[item]
    sale_items = SaleItem.all[item]
    value = if sale_items.nil?
    quantity[item] * items
    else
    (((quantity[item]/sale_items['units'])) * sale_items['price']) + ((quantity[item] % sale_items['units']) * items)
    end
    [item, value]
  end.to_h
end

def display_bill(price, quantity)
  billing_items = quantity.each_with_object(price) do |(key,value), billing_items| 
    billing_items[key] = {'units' => value, 'price' => price[key]}
  end
  
  total_price = billing_items.inject(0) do |total, (item,value)|
    total + value['price']
  end
  
  actual_price = quantity.inject(0) do |total, (item,units)| 
    total + (units * Item.all[item])
  end
  
  puts "Item     Quantity      Price"
  puts "--------------------------------------"
  billing_items.each do |item, value|
  puts "#{item.ljust(10)} #{value['units']}           $#{value['price'].round(3)}"
  end
  puts "Total price : $#{total_price.round(3)}"
  puts "You saved $#{(actual_price - total_price).round(3)} today."
  end
end

begin
  Item.new('shampoo', 19.19)
  Item.new('tooth paste', 5.17)
  Item.new('tooth brush', 3.99)
  Item.new('body shower', 6.89)

  SaleItem.new('milk',2,5.00)
  SaleItem.new('bread',3,6.00)
  
  price_calculator = PriceCalculator.new
  puts price_calculator.initiate_billing
end


  

