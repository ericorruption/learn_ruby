def add(*numbers)
  numbers.inject { |sum,i| sum + i }
end

def subtract(*numbers)
  numbers.inject { |sum,i| sum - i }
end

def sum numbers
  numbers.inject(0) { |sum,i| sum + i }
end
