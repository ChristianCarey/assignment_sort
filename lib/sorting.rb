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

def bubble_sort(array)
  
  until array.sorted?
    array.each_with_index do |element, index|
      break if index == array.length - 1
      array.swap(index, index +1 ) unless element <= array[index + 1]
    end
  end
  array
end

class Array
  def swap(first, second)
    self[first], self[second] = self[second], self[first]
    self
  end

  def sorted?
    sorted = true
    self.each_with_index do |element, index|
      break if index == self.length - 1
      sorted = false if self[index] > self[index + 1]
    end
    sorted
  end
end

def merge_sort(array)
  return array if array.length <= 1

  midpoint = array.length / 2
  left = array[0..midpoint]
  right = array[midpoint + 1..-1]
  left = merge_sort(left)
  right = merge_sort(right)
  merge(left, right)
end

def merge(left, right)
  new_arr = []

  until left.empty? || right.empty?
    if left[0] < right[0]
      new_arr.push(left[0])
    else
      new_arr.push(right[0])
    end
  end

  # handle the last value
  new_arr.push(left[0]) unless left.empty?
  new_arr.push(right[0]) unless right.empty?
  new_arr
end

# function merge(leftArr, rightArr){

#     // var newArr = [];

#     // compare leftArr[0] and rightArr[0]
#     // whichever is smaller, push it onto newArr

#     // repeat the process, but don't reuse elements,
#     // until you have pushed all the elements from
#     // leftArr and rightArr onto newArr in sorted order

#     // return newArr
# }



















