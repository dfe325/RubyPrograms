#fun with data structures

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


puts "There are #{best_records.length} records in best_records."
puts
puts "The artists listed are: #{best_records.keys}"
puts
# What are all the album names in the hash?
puts "The album names are: "
puts best_records.values #do |kay,value| puts value end
puts


puts "Delete the Eminem key-value pair from the list."
best_records.delete "Eminem"
puts best_records.to_s

puts
puts "Add your favorite musician and their best album to the list."
best_records["Vampire Weekend"] = ["Vampire Weekend"]
puts best_records.to_s
puts

puts "Change Nirvana's album to another."
best_records["Nirvana"] = ["Bleach"]
puts best_records.to_s
puts
puts "Is Nirvana included in best_records?"
puts "Answer: #{best_records.has_key?("Nirvana")}"
puts
puts "Is Soundgarden included in best_records?"
puts  "Answer: #{best_records.has_key?("Soundgarden")}"

puts "If Soundgarden is not in best_records then add a key-value pair for the band."
best_records["Soundgarden"] = ["Superunknown"]
puts best_records.to_s
puts
puts "Which key-value pairs have a key that has a length less than or equal to 6 characters?"
  best_records.each do |key, value|
    if key.length <= 6
      puts key, value
    end
  end
puts
puts "Which key-value pairs have a value that is greater than 10 characters?"
  best_records.each do |key,value|
    if value.length > 10
      puts key, value
      puts
    end
  end
puts
