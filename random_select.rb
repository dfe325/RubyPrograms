#Exercise from RubyMonk
#Given an array [1, 2, 3, 4, 5] and 2 should return two random numbers from the
#given array. (Note: those two random numbers may be the same number.) The
#method should return those random values in a new array.

def random_select(array, n)
  numbers = []
  length = array.length - 1
  n.times do
    number = rand(length)
    element = array[number]
    numbers << element
  end
  return numbers
end

array = [1, 2, 3, 4, 5]
puts random_select(array, 2).to_s
