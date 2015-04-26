#array drills using various methods

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
puts "Each name in array backwards: "
array.each do |element| print element.reverse + " " end

# * What are the total number of characters in the names in `array`?
sum = 0
array.each do |element| sum += element.length end
puts "\nThere are #{sum} characters in the names in array."

# * How many names in `array` are less than 5 characters long?
puts "#{array.count{|x| x.length < 5}} names in array are less than 5 characters long."

# * How many names in `array` end in a vowel?
sum = 0
array.each do |element|
  if element[-1].match(/[aeiou]/)
    sum += 1
  end
end
puts "#{sum} names in array end in a vowel."

# * How many names in `array` are more than 5 characters long?
sum = 0
array.each do |element|
  if element.length > 5
    sum += 1
  end
end
puts "#{sum} characters in array are more than 5 characters long."

# * How many names in `array` are exactly 5 characters in length?
sum = 0
array.each do |element|
  if element.length == 5
    sum += 1
  end
end
puts "#{sum} names in array are exactly 5 characters long."
