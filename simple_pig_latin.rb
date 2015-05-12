def translate(sentence)

  sentence = sentence.split(" ")

  translated_sentence = ""

  sentence.each do |word|

    if (/[aeiou]/ =~ word) == 0
      word << "way"
    elsif (/[aeiou]/ =~ word) == 1
      word << word.slice(0) << "ay"
      word = word.reverse.chop!.reverse
    elsif (/[aeiou]/ =~ word) == 2
      word << word.slice(0..1) << "ay"
      word = word.reverse.chop!.chop!.reverse
    end

    translated_sentence << word << " "

  end

  translated_sentence.strip
end
