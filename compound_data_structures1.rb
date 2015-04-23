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
          "Domenick",
          "Trycia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nitzsche and Dickinson"
  }
}


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
