# Running program begins here.
puts "Welcome to Baratas Mall ! Please Enter Your Name."
name = gets
puts "Hi #{name}"
puts "Let's Shoping! Yes (y) / No (n)"
firstIn = gets.chomp!.downcase

  if firstIn == "n"
  # If user answers "n", end program here.
    puts "That's too bad. Bye!"
  end
  
  if firstIn != "n" && firstIn != "y"
  # If user types anything but "y" or "n", end program here.
    puts "I don't get it. Shutting down."
  end
