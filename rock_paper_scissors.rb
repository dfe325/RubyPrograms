player_score = 0
computer_score = 0

until player_score == 2 || computer_score == 2

print "Player Score: #{player_score}, Computer Score: #{computer_score}
Choose rock (r), paper (p), or scissors (s): "

def choice (user, input)

if input == 'r' || input == 0 #accounts for either user input or CPU input
  puts "#{user} chose rock."
  return 0
elsif input == 'p' || input == 1
  puts "#{user} chose paper."
  return 1
elsif input == 's' || input == 2
  puts "#{user} chose scissors."
  return 2
else
  puts "Incorrect input. Please choose rock (r), paper (p), or scissors (s)."
  return nil
end

end

player_value = choice("Player", gets.chomp)

if player_value
  computer_value = choice("Computer", rand(3))
end

def result (player_value, computer_value)

if player_value && player_value == computer_value
  statement = "Tie. Try again."
  return statement
end

if player_value == 0 && computer_value == 1
  statement = "Paper beats rock. Computer wins this round."
elsif player_value == 0 && computer_value == 2
  statement = "Rock beats scissors. Player wins this round."
elsif player_value == 1 && computer_value == 2
  statement = "Scissors beats paper. Computer wins this round."
elsif player_value == 1 && computer_value == 0
  statement = "Paper beats rock. Player wins this round."
elsif player_value == 2 && computer_value == 0
  statement = "Rock beats scissors. Computer wins this round."
elsif player_value == 2 && computer_value == 1
  statement = "Scissors beats paper. Player wins this round."
else statement = nil.to_s
end

return statement
end

puts result(player_value, computer_value)
puts

if result(player_value, computer_value).include? "Player"
  player_score += 1
elsif result(player_value, computer_value).include? "Computer"
  computer_score += 1
end

end

if player_score == 2
  puts "Player wins!"
elsif computer_score == 2
  puts "Computer wins!"
end
