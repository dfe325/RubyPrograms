def translate(sentence)

  sentence = sentence.split(" ")

  translated_sentence = ""

  sentence.each do |word|

    if /[aeiou]/.match(word[0])
      word << "way"
    elsif /[aeiou]/.match(word[1])
      word = word << word.slice(0) << "ay"
      word = word.reverse.chop!.reverse
    else
      word = word << word.slice(0..1) << "ay"
      word = word.reverse.chop!.chop!.reverse
    end

    translated_sentence << word << " "

  end

  translated_sentence.chomp

end
