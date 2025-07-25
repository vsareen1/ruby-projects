def sub_strings(string, dictionary)
  new_dictionary = Hash.new()
  string = string.downcase()
  dictionary.each do |value|
    # down case the value as well
    temp_value = value.downcase()
    # Extract length of the word in dictionary 
    value_length = temp_value.length

    # Set up index pointers to traverse the sentence
    left = 0
    right = left + value_length
  
    # Traverse through the string to match word extracted from the dictionary
    while right < string.length + 1 do
      # If match found increment the value
      if temp_value == string[left...right]
        new_dictionary[value] = new_dictionary.fetch(value, 0) + 1
      end
      left += 1
      right += 1      
    end
  end
  return new_dictionary
end

# Example shown in the assignment
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts sub_strings("Howdy partner, sit down! How's it going?", dictionary)
