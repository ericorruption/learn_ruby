def add(*numbers)
  numbers.inject { |sum,i| sum + i }
end

def subtract(*numbers)
  numbers.inject { |sum,i| sum - i }
end

def sum numbers
  numbers.inject(0) { |sum,i| sum + i }
end

def multiply(*numbers)
  numbers.inject { |total, i | total * i }
end

def power(number,power)
  number ** power
end

def factorial number
  return 1 if number == 0

  multiply(*1..number)
end
