def count_letters(string)
  h = Hash.new(0)
  string.each_char do |char|
    next unless char =~/\w/
    h[char] += 1
  end
  h
end

puts count_letters("yoyoyoyoyyoyoyoyo eeyyyy lmaozedong rofl lol")