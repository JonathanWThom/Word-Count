class String
  define_method(:word_count) do |string, option|
    counter = 0
    if option == 'full'
      counter = string.downcase.split(" ").each {|word| word.gsub!(/[^0-9A-Za-z]/, '')}.count(self.downcase)
    elsif option == 'partial'
      counter = string.downcase.scan(/(?=#{self.downcase})/).count
    end
    counter
  end
end
