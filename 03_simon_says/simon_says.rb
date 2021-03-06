def echo message
  message
end

def shout message
  message.upcase
end

def repeat message, amount = 2
  "#{ message }#{ (' ' + message) * (amount - 1) }"
end

def start_of_word word, amount
  word.slice(0, amount)
end

def first_word phrase
  phrase.split(" ")[0]
end

def titleize phrase
  little_words = ['and', 'over', 'the', 'in', 'of', 'a', 'an']
  capitalized = []
  words = phrase.downcase.split

  words.each_with_index do |word, index|
    if little_words.include? word and index != 0
      capitalized << word
    else
      capitalized << word.capitalize
    end
  end

  capitalized.join(" ")
end
