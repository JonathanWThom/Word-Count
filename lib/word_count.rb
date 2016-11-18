class String
  define_method(:word_count) do |string, option|
    counter = 0
    words = string.downcase.split(" ")
    if option == "full"
      words.each() do |word|
        if word == self.downcase
          counter += 1
        end
      end
    elsif option == "partial"
      words.each() do |word|
        if word.include?(self.downcase)
          counter += 1
        end
      end
    end
    counter
  end
end

# class String
#   define_method(:word_count_advanced) do |string|
#     counter = 0
#     words = string.downcase.split(" ")
#     words.each() do |word|
#       if word.include?(self.downcase)
#         counter += 1
#       end
#     end
#     counter
#   end
# end
