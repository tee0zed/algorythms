
def sel_sort(array, index = 0)
  biggest = array[index]

  return array if index == array.size

  subarr = array.slice(index, array.size)

  subarr.each do |el|
    biggest = el if el > biggest
  end

  index_on_biggest_in_array = subarr.index(biggest) + index

  array.delete_at(index_on_biggest_in_array)
  array.unshift(biggest)

  index += 1
  
  sel_sort(array, index)
end

10.times do 
  arr = Array.new(rand(10..20)) { rand(0..100) }

  if sel_sort(arr) == arr.sort
    puts 'Ok'
  else
    puts 'Fail'
  end
end
