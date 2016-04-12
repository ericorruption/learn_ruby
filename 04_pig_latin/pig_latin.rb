def translate_word word
  vowels = ["a","e","i","o","u"]
  first_letters = [
    word.slice(0),
    word.slice(1),
    word.slice(2)
  ];

  consonants = []
  had_q = false

  first_letters.each_with_index do | letter , i |
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
