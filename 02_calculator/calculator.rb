def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  return 0 if arr.empty?

  arr.inject(:+)
end

def product(arr)
  return 0 if arr.empty?

  arr.inject(:*)
end

def factorial(num)
  return 1 if num == 0
  num.downto(1).inject(:*)
end