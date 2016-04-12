def translate_word word, capitalize = false
  word.downcase! if capitalize

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
  word = word + consonants
  word.capitalize! if capitalize

  "#{ word + 'ay'}"
end

def translate words
  latinized = []

  words.split.each do | word |
    latinized << translate_word(word, word[0].capitalize == word[0])
  end

  latinized.join(" ")
end
