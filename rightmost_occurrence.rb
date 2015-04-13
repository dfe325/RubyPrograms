#finds the rightmost occurrence of a character without using rindex method

def rightmost(string, char)
  return string.length - (string.reverse.index(char)) - 1
end

puts rightmost("big bad bikers", "b")
puts rightmost("lucy in the sky with diamonds", "i")
