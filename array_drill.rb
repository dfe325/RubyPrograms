#Different array methods used to return values and provide specific information

transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]
puts "transactions is: " + transactions.to_s
puts "Value of first transaction is: " + transactions.first.to_s
puts "Value of second transaction is: " + transactions[1].to_s
puts "Value of fourth transation is: " + transactions[3].to_s
puts "Value of the last transation is: " + transactions.last.to_s
puts "Value of second from last transaction is: " + transactions[-2].to_s
puts "Value of the 5th from last transaction is: " + transactions[-5].to_s
puts "Value of transaction with index 5 is: " + transactions[5].to_s  #5_000
puts "Total number of transactions is: " + transactions.length.to_s
puts "Total number of positive transactions is: " + (transactions.count { |x| x > 0 }).to_s
puts "Total number of negative transaction is: " + (transactions.count { |x| x < 0 }).to_s

withdrawals = Array.new
transactions.each do |x|
  if x < 0
    withdrawals << x
  end
end
puts "The largest withdrawal is: " + withdrawals.min.to_s

deposit = Array.new
transactions.each do |x|
  if x > 0
    deposit << x
  end
end

puts "The largest deposit is: " + deposit.max.to_s  #62_000
puts "The smallest withdrawal is: " + withdrawals.max.to_s
puts "The smallest deposit is: " + deposit.min.to_s
puts "Total value of all transactions is: " + transactions.reduce(:+).to_s
puts "Final balance would be: " + (239_900 + 100_300).to_s
