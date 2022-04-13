def count_letters(word)
  letter_counts = Hash.new(0)
  word_with_only_letters = word.downcase.gsub!(/[^a-z]/, "")
  word_array = word_with_only_letters.split("")
  word_array.each do |letter|
    letter_counts[letter] += 1
  end
  letter_counts
end

test_word = "Housecall Pro 12345!"
p count_letters(test_word)
