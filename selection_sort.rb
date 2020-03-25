
def sel_sort(array, num = array.size-1)
  smallest = array[num]
  return array if num == -1

  array.slice(0, num).each do |el|
    smallest = el if el < smallest
  end

  array.push(array.delete(smallest))
  num -= 1
  sel_sort(array, num)
end

puts sel_sort [5, 7, 12, 77, 421, 23, 14, 42]
