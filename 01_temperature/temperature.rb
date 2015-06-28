def ftoc(temp)
  celsius = (temp.to_i - 32) * (5.to_f / 9.to_f)
  celsius.round
end

def ctof(temp)
  temp.to_i / (5.to_f / 9.to_f) + 32
end