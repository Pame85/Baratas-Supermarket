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
    puts "{shampoo: 19.90, face wash: 20.00, serum: 15.00}"

    puts "Enter items price"
	  answer = gets.to_i

    price << answer
 	  puts "price: #{answer}"

  def total_everyhting(numbers)
    numbers.sum
  end
end
  
  

