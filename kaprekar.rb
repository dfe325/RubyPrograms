#determines whether a number is a Kaprekar's number

#from RubyMonk.com
# https://rubymonk.com/learning/books/1-ruby-primer/problems/150-kaprekar-s-number

def kaprekar?(k)
  square = k**2
  n = k.to_s.length
  kaprekar = square % (10**n) + square / (10**n)
  if kaprekar == k
    return true
  else
    return false
  end
end
