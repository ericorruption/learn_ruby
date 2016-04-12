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
