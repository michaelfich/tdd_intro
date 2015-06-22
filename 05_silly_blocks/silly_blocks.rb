def reverser
  sentence = yield.split

  sentence.map! do |word|
    word.reverse
  end

  sentence.join(" ")
end

def adder(num=1)
  yield + num
end

def repeater(num=nil)
  return num == nil ? yield : num.times { yield }
end