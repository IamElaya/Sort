# Save this file to your computer so you can run it 
# via the command line (Terminal) like so:
#   $ ruby shakil_the_dog.rb
#
# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).
 
# You'll probably want to write other methods, but this 
# encapsulates the core dog logic
def shakil_the_dog
  prompt = "> "
  puts "What do you want to say to Shakil?"
  print prompt
  
  while say = gets.chomp
  case say
  when "woof"
    puts "WOOF WOOF WOOF"
    print prompt
  when "SHAKIL STOP!".downcase
    puts "Shakil is silent"
     print prompt
  when "meow"
    puts "woof woof woof woof woof"
     print prompt
  when /treat/
    puts "Shakil is silent"
     print prompt
  when "go away"
    puts "Shakil has left the building"
    break
  else
    puts "woof"
     print shakil_the_dog
end
 end
end
# Run our method
shakil_the_dog