def factorial(length)
  if length > 1
    factorial = length * factorial(length-1)
  else
    factorial = 1
  end
  return factorial
end

n = 4

puts factorial(n)
