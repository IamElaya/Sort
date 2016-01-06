#1.upto(100) do |i|
def fizzbuzz(range)
  range.each do |i|
  #if i % 5 == 0 && i % 3 == 0
   # puts "FizzBuzz"
  #elsif i % 5 == 0
   # puts "Buzz"
  #elsif i % 3 == 0
   # puts "Fizz"
  #else
   # puts i
  #end
  fizz = (i % 3 == 0)
  buzz = (i % 5 ==0)
  puts case 
       when fizz && buzz then "FizzBuzz"
       when fizz then "Fizz"
       when buzz then "Buzz"
       else i   
  end
end
end

puts fizzbuzz(77..619)