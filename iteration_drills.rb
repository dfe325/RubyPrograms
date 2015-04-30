#Write Ruby<->English answers here as comments in your code

#.each into English

# 1) for every element called 'number' in the array 'numbers,'
#print out the product of 3 times that number

#2) for every element called 'name' in the array called 'names'
# print out the length of the element

#3) for every element 'number' in the array called 'numbers',
# add that number to the variable sum

#4) for every key/value pairing in the hash 'hash',
# print out "#{key} is #{value} years old."

#5) for every key/value pairing in the has 'account',
# add the value element to the variable sum, then print out the total sum

#6) for every key/value pairing in the addresses hash, print out
# "#{key} lives on #{value}"

#English into .each

# 1) sentences.each do |word|
#   puts word
# end
#
# 2)
# ma_area_code = [339, 351, 413, 508, 617, 774, 781, 857, 978]
# numbers.each do |phone_number|
#   if ma_area_code.include? phone_number
#     puts phone_number
#   end
# end
#
# 3)
# numbers.each do |number|
#   if number.odd?
#     puts number
#   end
# end
# 4)
# ages.each do |name, age|
#   puts "#{name} is #{age} years old."
# end
#5)
# ages.each do |name, age|
#   if age > 10
#     puts "#{name}, #{age}."
#   end
# end
#6)
# ages.each do |name, age|
#   if age.even?
#     puts name, age
#   end
# end

array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
sum = 0
array.each { |element| sum += element }
puts "The sum of all numbers in the array is: " + sum.to_s

# * How would you print out each value of the array?
puts "Here is each value of the array: "
puts array.each { |element| puts element.to_i }

# * What is the sum of all of the even numbers?

sum = 0
array.each { |element| sum += element if element.even? }
puts "Sum of even numbers is: " + sum.to_s

# * What is the sum of all of the odd numbers?
sum = 0
array.each { |element| sum += element if element.odd? }
puts "Sum of odd numbers is: " + sum.to_s

# * What is the sum of all the numbers divisble by 5?
sum = 0
array.each { |element| sum += element if element % 5 == 0 }
puts "Sum of all numbers divisible by 5 is: " + sum.to_s

# * What is the sum of the squares of all the numbers in the array?
sum = 0
array.each { |element| sum += (element * element) }
puts "Sum of all squares in the array is: " + sum.to_s

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
puts "Each name in array backwards: "
array.each { |element| print element.reverse } + " " end

# * What are the total number of characters in the names in `array`?
sum = 0
array.each { |element| sum += element.length }

puts "\nThere are #{sum} characters in the names in array."


# * How many names in `array` are less than 5 characters long?
puts "#{array.count{ |x| x.length < 5 }} names in array are less than 5 characters long."


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

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

#  Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of the artists?

puts "The artists listed are: #{best_records.keys}\n\n"


# * How would you print out all the names of the albums?

puts "The album names are: #{best_records.values}\n\n"

# * Which artist has the longest name?

# * How would you change all the album titles for every artist to `Greatest Hits`?

# * How would you delete a key-value pair if the artist's name ends in a vowel?

best_records.each do |key, value|
  new_key = key.split("")
  if new_key[-1].match(/[aeiou]/)
    best_records.delete(key)
  end
end

puts "All artists whose names end in a vowel eliminated: #{best_records.to_s}"



ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96, "Alivia"=>22, "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62, "Darryl"=>47, "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27, "Rebeca"=>99, "Beatrice"=>99, "Kelton"=>10, "Zachary"=>18, "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `ages`?
puts "All the names of 'ages': #{ages.keys}.\n"

# * How would you print out each key-value pair in the format of `<name> is <age> years old.`?
ages.each { |key, value| puts "#{key} is #{value} years old." }

# * How would you print out every person with odd numbered age?

puts "\nEvery person with an odd-numbered age: "

ages.each do |key, value|
  unless value % 2 == 0
    puts key
  end
end

# * How would you delete everyone under 25 years of age?
puts "\nEveryone over 25 years of age: "

older_ages = Hash.new

ages.each do |key,value|
  if value > 25
    older_ages[key] = value
  end
end
puts older_ages.to_s

# * What is the name and age of everyone with a name greater than or equal to 5 characters?

puts "Everyone with a name greater than or equal to 5 characters: "

ages.each { |key,value| puts key, value if key.length >= 5 }


people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Dominick",
          "Tricia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nietzsche and Dickinson"
  }
}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `people`?


# * How would you print out all the names of `people` and which company they work for?
# * What are the names of all the children of everyone in `people`?
# * What are the names of all the companies that people work for?
# * How would you convert all the phone numbers to the same standard (pick one)?


people =
[
    {
          "Derek Wehner" => {
               "phone" => "588-047-7782",
             "company" => "Daniel-Carroll",
            "children" => [
                "Phoebe",
                "Gretchen",
                "Wiley"
            ]
        },
           "Ali Koelpin" => {
               "phone" => "1-127-057-0020",
             "company" => "Rau, Rutherford and Lockman",
            "children" => [
                "Juwan"
            ]
        },
        "Ervin Prohaska" => {
               "phone" => "(393) 630-3354",
             "company" => "Carter Inc",
            "children" => [
                "Virgil",
                "Piper",
                "Josianne"
            ]
        },
          "Hellen Borer" => {
              "phone" => "1-687-825-0947",
            "company" => "Maggio, Ferry and Moen"
        }
    },
    {
        "Elinor Johnson" => {
              "phone" => "819.911.5553",
            "company" => "Pollich Group"
        }
    },
    {
        "Richmond Murray" => {
               "phone" => "1-516-432-2364",
             "company" => "Sporer and Sons",
            "children" => [
                "Kade",
                "Sage"
            ]
        },
            "Nakia Ferry" => {
               "phone" => "134-079-2237",
             "company" => "Hamill, O'Keefe and Lehner",
            "children" => [
                "Rollin"
            ]
        }
    }
]

# Write Ruby code to find out the answers to the following questions:

# * What are the names of everyone in `people`?

0.upto(2){ |i| puts people[i].keys }

# * What are the names of all the children in `people`?
puts "The names of all the children in 'people' are: "
people.each do |element|
  element.each do |key, value|
    unless value["children"] == nil
      puts value["children"]
    end
  end
end

# * How would you create a new hash called `phone_numbers` that has a key of a name and value of a phone number in `people`?
# * How would you create a new hash called `employers` that has a key of a name and a value of a company name in `people`?
# * How would you create a new hash called `children_count` that has a key of a name and a value of the number of children a person has?
