# Iterate through string.
# Might turn into an array.
# Within each interation, check if the letter is already present in the hash.
# Find a way to not count the spaces.
# Ignore case.
  # Could .downcase from the start.
# Ignors Symbols
  # Could manipulate the string before iterating OR user a conditional.

def count_letters(string)
  # Create the hash with "0" passed to .new to avoid some further logic while incrementing.
  letter_counts = Hash.new(0)
  # Prevents a sad path/edge case if the string happens to be empty.
  if !string.empty?
    # En lieu of a conditional block, I decided to change the string to only allow include the lowercase characters.
    word_with_only_letters = string.downcase.gsub(/[^a-z]/, "")
    # Now that the string only has lowercase letters, I wanted to use an array for easy iterating.
    word_array = word_with_only_letters.split("")
    # Check each letter
    word_array.each do |letter|
      # Letter/key value gets incremented whether that key previously existed or not...no need to check first.
      letter_counts[letter] += 1
    end
  end
  # Explicit return value due to using each as my enumerable.
  letter_counts
end

test_string = "Housecall Pro 12345!"
p count_letters(test_string)
