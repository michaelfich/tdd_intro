class Book

  def title=(str)
    @title = titleize(str)
  end

  def title
    @title
  end

  private

  def titleize(str)
    exceptions = ["and", "or", "the", "over", "in", "a", "of", "an"]
    words = str.split
    words.map! do |word|
      if exceptions.include?(word)
        word
      else
        word.capitalize
      end
    end
    words.first.capitalize!
    words.join(" ")
  end

end