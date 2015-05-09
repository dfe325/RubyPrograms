def translate(sentence)

  sentence = sentence.split(" ")

  translated_sentence = ""

  sentence.each do |word|

    if word.index(/[aeiou]/) == 0
      word << "way"
    else
      word << word[0] << "ay"
      word[0] = ""
    end

    translated_sentence << word << " "  #puts the changed word back into string format

  end

  translated_sentence
end


puts translate("happy") #appyhay
puts
puts translate("duck") #uckday
puts
puts translate("egg") #eggway
