def count_letters(string)
  letter_counts = Hash.new(0)
  # Added conditional in case the string is empty
  if !string.empty?
    word_with_only_letters = string.downcase.gsub(/[^a-z]/, "")
    word_array = word_with_only_letters.split("")
    word_array.each do |letter|
      letter_counts[letter] += 1
    end
  end
  letter_counts
end


test_word = "Housecall Pro 12345!"
p count_letters(test_word)
