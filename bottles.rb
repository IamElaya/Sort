@customer = {
  bottles_purchased: 0,
  bottles_gave: 0,
  caps_gave: 0,
  bottles_left: 0,
  caps_left: 0,
}


def bottles
  prompt = "> "
  ending_prompt = "Thank you for your investment, what do you want to give next? > "
  puts "What do you want to give in? You can buy bottles or redeem bottles or their caps"
  print prompt

  while say = gets.chomp

  if say =~/\$/
    bottles_bought = (say.delete('$').to_i / 2).to_s
    bottles_bought_total = "Now " + (@customer[:bottles_purchased] += bottles_bought.to_i).to_s + " bottles have been purchased, "
    puts "You recieve " + bottles_bought + " bottles. " 
    print ending_prompt
  elsif say =~/bottles/
    bottles_given = ((say.delete(' ', 'bottles')).to_i / 2).to_s
    bottles_remaining = ((say.delete(' ', 'bottles')).to_i % 2).to_s
    bottles_given_total = (@customer[:bottles_gave] += bottles_given.to_i).to_s + " bottles have been obtained through giving bottles,."
    bottles_remaining_total = (@customer[:bottles_left] += bottles_remaining.to_i).to_s + " bottles remain."
    if bottles_given % 2 == 0 then
      puts "You recieve " + bottles_given + " bottles." 
    else 
      puts "You recieve " + bottles_given + " bottles, and " +  bottles_remaining_total
    print ending_prompt
  end
  elsif say =~/caps/
    caps_given = ((say.delete(' ', 'caps')).to_i / 4).to_s
    caps_remaining = ((say.delete(' ', 'caps')).to_i % 4).to_s
    caps_given_total = " and " + (@customer[:caps_gave] += caps_given.to_i).to_s + " bottles have been obtained through giving caps."
    caps_remaining_total = (@customer[:caps_left] += caps_remaining.to_i).to_s + " caps remain."
  if caps_given % 4 == 0 then
    puts "You recieve " + caps_given + " bottles." 
  else
    puts "You recieve " + caps_given + " bottles, and " +  caps_remaining_total
  end
  else
    puts "Please give money, bottles, or bottle"
  end
  puts "" + bottles_bought_total.to_s + bottles_given_total.to_s + caps_given_total.to_s + ""
end
end

bottles




