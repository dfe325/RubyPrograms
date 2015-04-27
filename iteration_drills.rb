#fun with iteration

array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
puts "Sum of all numbers in 'array' is: #{array.inject(:+)}"

# * How would you print out each value of the array?
array.each {|element| print element.to_s + " "}

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

puts array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

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
 puts "There are #{best_records.length} records in best_records.\n \n"

 puts "The artists listed are: #{best_records.keys}\n \n"

 puts "The album names are: #{best_records.values}\n \n"

 best_records.delete "Eminem"
 puts "The Eminem key-value pair has been deleted from the list: #{best_records}\n \n"

 best_records["Vampire Weekend"] = ["Vampire Weekend"]
 puts "Favorite musician and their best album has been added to the list: #{best_records}\n \n"

 best_records["Nirvana"] = ["Bleach"]
 puts "Nirvana's album has been changed to another: #{best_records}\n \n"

 puts "Q: Is Nirvana included in best_records? A: #{best_records.has_key?("Nirvana")}\n \n"

 puts "Q: Is Soundgarden included in best_records? A: #{best_records.has_key?("Soundgarden")}\n \n"

 best_records["Soundgarden"] = ["Superunknown"]
 puts "Key-value pair added for Soundgarden: #{best_records}\n \n"

 puts "Q: Which key-value pairs have a key that has a length less than or equal to 6 characters?"
   best_records.each do |key, value|
     if key.length <= 6
       puts key, value
       puts
     end
   end

 puts "Q: Which key-value pairs have a value that is greater than 10 characters?"
   best_records.each do |key,value|
     if value.length > 10
       puts key, value
       puts
     end
   end

ages = {"Arch"=>89, "Gretchen"=>93, "Simone"=>12, "Daija"=>96, "Alivia"=>22, "Serena"=>28, "Alek"=>3, "Lula"=>24, "Christian"=>62, "Darryl"=>47, "Otha"=>32, "Evalyn"=>44, "Lincoln"=>27, "Rebeca"=>99, "Beatrice"=>99, "Kelton"=>10, "Zachary"=>18, "Aurelie"=>91, "Dell"=>71, "Lisandro"=>22}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `ages`?
# * How would you print out each key-value pair in the format of `<name> is <age> years old.`?
# * How would you print out every person with odd numbered age?
# * How would you delete everyone under 25 years of age?
# * What is the name and age of everyone with a name greater than or equal to 5 characters?

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

# How many people are in people (excluding children)?
puts "There are #{people.keys.length} people in the hash."
puts
# What are the names of all the people?
puts "The names of all five people are: "
puts people.keys
puts
# What is the phone number of Alia O'Conner PhD?
puts "The phone number of Alia O'Conner PhD is: " + people["Dr. Adela DuBuque"]["phone"].to_s
puts
# How many children does Brian Heller have?
puts "Brian Heller has #{people["Brian Heller"]["children"].count.to_s} child."
# What company does Dr. Adela DuBuque work for?
puts
puts "Dr. Adela DuBuque works for #{people["Dr. Adela DuBuque"]["company"]}."
puts
# What are the names of the people who have children?
puts "The people with children are: "
people.each do |key, value|
  if value.has_key?("children")
    puts key
  end
end
puts

# What are the names of the people who do not have children?
puts "The people without children are: "
 people.each do |key, value|
   unless value.has_key?("children")
     puts key
   end
  end

# What is Brian Heller's child's name?
puts "Brian Heller's child's name is #{people["Brian Heller"]["children"]}."
puts

# What is Maryse Johns' first child's name?
puts "Maryse Johns' child's first name is #{people["Maryse Johns"]["children"].first.to_s}."

# Dr. Adela DuBuque just had a baby named Tomas. How would you update the hash for this information?
puts
people["Dr. Adela DuBuque"]["children"] = "Tomas"
puts "Dr. Adela DuBuque's new child is: " + people["Dr. Adela DuBuque"]["children"].to_s

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


# * How would you create a new hash called `phone_numbers` that has a key of a 
# * name and value of a phone number in `people`?

people[0].merge!("phone_numbers" => {"name" => "phone number"})
puts people[0].to_s
puts

# * How would you create a new hash called `employers` that has a key of a name
# * and a value of a company name in `people`?

people[0].merge!("employers" => {"name" => "company name"})
puts people[0].to_s
puts

# * How would you create a new hash called `children_count` that has a key of a
# * name and a value of the number of children a person has?

number = people[0]["Derek Wehner"]["children"].count
people[0].merge!("children_count" => {"Derek Wehner" => number})

puts people[0]["Derek Wehner"]["children_count"].to_s
