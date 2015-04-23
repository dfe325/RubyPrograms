#exercises involving compound data structures
#all data structures/questions provided by Launch Academy

sets_of_people =
[
  {
         "Bernard Feil" => {
             "phone" => "(880) 434-0630",
           "company" => "Maggio Inc",
          "children" => [
              "Nikki"
          ]
      },
          "Ruby Hessel" => {
             "phone" => "1-467-852-4981",
           "company" => "Kemmer Inc",
          "children" => [
              "Sydney"
          ]
      },
          "Savanah Toy" => {
             "phone" => "440-632-0287",
           "company" => "Hudson, Stehr and Lind",
          "children" => [
              "Garth"
          ]
      },
      "Casandra Kemmer" => {
            "phone" => "1-515-759-7470",
          "company" => "Davis, Bernier and Hermann"
      },
             "Edd Rath" => {
            "phone" => "(522) 829-3164",
          "company" => "Mosciski LLC"
      }
  },
  {
         "Dagmar Brakus" => {
             "phone" => "1-881-313-1173",
           "company" => "Mitchell, Schmitt and Haley",
          "children" => [
              "Reuben"
          ]
      },
         "Einar Effertz" => {
            "phone" => "(265) 857-5141",
          "company" => "Pfeffer, Klocko and Von"
      },
      "Dr. Sigrid Nader" => {
             "phone" => "707.762.7870",
           "company" => "Weissnat, Hayes and Dickinson",
          "children" => [
              "Israel",
              "Elyse",
              "Wilfredo"
          ]
      }
  }
]

# How many people are in the first set of people?
puts "There are #{sets_of_people[0].keys.count} people in the first set."
puts
# How many people are in the second set of people?
puts "There are #{sets_of_people[1].keys.count} people in the second set."
puts
# What is Ruby Hessel's phone number?
puts "Ruby Hessel's phone number is: "
puts sets_of_people[0]["Ruby Hessel"]["phone"].to_s
puts
# What are the names of Dr. Sigrid Nader's children?
puts "Dr. Sigrid Nader's children are: "
puts sets_of_people[1]["Dr. Sigrid Nader"]["children"]
puts
# What is Bernard Feil's child's name?
puts "Bernard Feil's child's name is: "
puts sets_of_people[0]["Bernard Feil"]["children"]
puts
# What company does Casandra Kemmer work for?
puts "Casandra Kemmer works for: "
puts sets_of_people[0]["Casandra Kemmer"]["company"]
puts
# Who are all the people in the first set that have an m in their Company names?
puts "The people in the first set that have an m in their company names are: "

  sets_of_people[0].each do |key,value|
    if value["company"].downcase.include? ("m")
      puts "#{key}"
    end
  end

  # if sets_of_people[0][key]["company"].include?("m")
  #   puts sets_of_people[0].keys.to_s
  # end
