def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, num=1)
  return "#{str} #{str}" if num == 1

  val = (1..num).inject([]) do |arr|
    arr << str
  end

  val.join(" ")
end

def start_of_word(str, num)
  str[0, num]
end

def first_word(str)
  str.split.first
end

def titleize(str)
  lowcase = ["and", "or", "the", "over"]
  words = str.split
  words.map! do |word|
    if lowcase.include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end