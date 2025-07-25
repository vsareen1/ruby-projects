def bubble_sort(array)
  array_length = array.length
  pass_number = 0
  
  while pass_number < array_length - 1 do
    index = 0
    while index + 1 < array_length do
      if array[index] > array[index + 1]
        temp_value = array[index]
        array[index] = array[index + 1]
        array[index + 1] = temp_value
      end
      index += 1
    end
    pass_number += 1
  end

  return array
end

puts bubble_sort([4,3,78,2,0,2])