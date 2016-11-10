def insert(array, right_index, value)
  # value is the value of the first unsorted element
  # right_index is the furthest right sorted element

  # Step through sorted elements right to left.
  # As long as your value is less than the element
  # at array[i] and you still have elements
  i = right_index
  while(i >= 0 && array[i] > value)
      # copy the element
      array[i+1] = array[i]
      i -= 1
  end

  # insert the actual element
  array[i+1] = value;
end

def insertion_sort(array)
  right_index = 0
  array.each_with_index do |value, index|
    next if index == 0
    insert(array, right_index, value)
    right_index += 1
  end
  array
end
