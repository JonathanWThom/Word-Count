class String
  define_method(:word_count) do |string, option|
    counter = 0
    if option == 'full'
      words = string.downcase.split(" ").each {|word| word.gsub!(/[^0-9A-Za-z]/, '')}
      counter = words.count(self.downcase)
    elsif option == 'partial'
      counter = string.downcase.scan(/(?=#{self.downcase})/).count
    end
    counter
  end
end
