#this method finds the longest word in a given string
#from Coderbyte.com


def LongestWord(sen)

  array = []
  array = sen.split(' ')
  sen =  array.max_by { |x| x.length }
  return sen 
         
end
