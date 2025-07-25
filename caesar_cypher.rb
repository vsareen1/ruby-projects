def cypher(character, character_set, key)
  # total alphabet size
  number_of_alphabets = 26
  # Convert any form of key to integer
  key = key.to_i

  # Ignore character if it does not belong in the charcter_set
  if !character_set.include?(character)
    return character
  end

  # Check if the character is lowercase or upper case alpha bet
  original_char_order = character.ord

  if original_char_order >= 97
    threshold = 97 + number_of_alphabets - 1
  else
    threshold = 65 + number_of_alphabets - 1
  end

  if original_char_order + (key % number_of_alphabets) > threshold
    original_char_order = original_char_order - number_of_alphabets + (key % number_of_alphabets)
  else
    original_char_order = original_char_order + (key % number_of_alphabets)
  end

  return original_char_order.chr
end

def caesar_cypher(string, key = 5)
    # Store all letters as one hash set for a quick search
    all_characters = ('a'..'z').to_a() + ('A'..'Z').to_a()
    all_characters = all_characters.to_set()
    string_char = string.chars()
    # Loop through the charset and gets its shifted character
    string_char = string_char.map do |character|
      cypher(character, all_characters, key)
    end

    # Return the shifted characters as a string
    return string_char.join('')
end


puts caesar_cypher("abcdef", -26 * 2)