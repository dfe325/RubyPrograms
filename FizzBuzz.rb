#prints numbers 0 to 100
#except where number is div by 3 ("Fizz"), by 5 ("Buzz") or by 3 and 5 ("FizzBuzz")

101.times do |number|
    if number % 3 == 0 && number % 5 == 0
      puts "FizzBuzz"
    elsif number % 3 == 0
      puts "Fizz"
    elsif number % 5 == 0
      puts "Buzz"
    else
      puts number
    end
end
