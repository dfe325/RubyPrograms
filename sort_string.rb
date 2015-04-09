#sorts the words in a given sentence
#from rubymonk.com

#https://rubymonk.com/learning/books/1-ruby-primer/problems/14-sort-string-words

def sort_string(string)
  words = string.split(' ')
  words = words.sort{|x, y| x.length <=> y.length}
  new_string = ''
    words.each do |word|
      new_string += word + ' ' 
    end
  return new_string.chop
end
