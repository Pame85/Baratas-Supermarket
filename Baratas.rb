
# Running program begins here.

puts "Welcome to Baratas Mall ! Please Enter Your Name."
name = gets
puts "Hi #{name}" 
items = "[shampoo: $ 19.19, tooth paste: $ 5.17, tooth brush: $ 3.99, body shower: $ 6.89]"
puts "Today Items Listing: #{items}"

puts "This is sum calculation up to 5 numbers"
puts "Enter the first number:"
num1 = gets.to_i

puts "Enter the second number:"
num2 = gets.to_i

num3 = gets.to_i

puts "Enter the second number:"
num4 = gets.to_i

puts "Enter the second number:"
num5 = gets.to_i

def total_everyhting(numbers)
  numbers.sum
end

def total_sum(numbers)
  numbers.inject{|sum, x| sum + x}
end

sum = 0
workingArray.each {|num| sum += num}
puts "Your sum is #{sum}"