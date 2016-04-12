def echo message
  message
end

def shout message
  message.upcase
end

def repeat message, amount = 2
  "#{ message }#{ (' ' + message) * (amount - 1) }"
end
