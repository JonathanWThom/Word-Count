class String
  define_method(:word_count) do |string|
    counter = 0
    words = string.split(" ")
    words.each() do |word|
      if word == self
        counter += 1
      end
    end
    counter
  end
end

class String
  define_method(:word_count_advanced) do |string|
    counter = 0
    words = string.split(" ")
    words.each() do |word|
      if word.include?(self)
        counter += 1
      end
    end
    counter
  end
end
