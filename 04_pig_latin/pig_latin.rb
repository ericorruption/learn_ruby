def translate_word word
  vowels = ["a","e","i","o","u"]
  letters = word.split("");
  consonants = []
  had_q = false

  letters.each_with_index do | letter , i |
    if vowels.include? letter and not had_q
      break
    else
      had_q = letter == "q" ? true : false

      word[0] = ""
      consonants << letter
    end
  end

  consonants = consonants.join

  return "#{word + consonants + 'ay'}"
end

def translate words
  latinized = []

  words.split.each do | word |
    latinized << translate_word(word)
  end

  latinized.join(" ")
end
