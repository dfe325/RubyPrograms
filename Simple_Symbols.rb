.#used regular expressions to detect presence of a patter ("+(.)+") in a given string


def SimpleSymbols(str)

    if str.count("+") % 2 != 0
        result = false
      elsif str.length < 3
        result = false
      elsif str.match(/\+(.)\+/)
        result = true
      else
        result = false
    end


  return result.to_s

end
