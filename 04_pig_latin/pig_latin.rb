def translate(str)
  vowels = /[aeiou]/

  str = str.split

  str.map! do |word|
    part = word.partition(vowels)

    first = part[0]
    vowel = part[1]

    if vowel == "u" && first[first.size - 1] == "q"
      part.rotate!(2)
    else
      part.rotate!
    end

    part.join << "ay"
  end

  str.join(" ")
end
