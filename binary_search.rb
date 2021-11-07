def correct_item?(item, guess)
  item == guess
end

def binary_search(array, item)
  low_point = 0
  high_point = array.size - 1

  while high_point >= low_point do
    mid = (high_point + low_point)/2
    guess = array[mid]

    if correct_item?(item, guess)
      return mid
    elsif guess > item
      high_point = mid - 1
    else
      low_point = mid + 1
    end
  end
  return nil
end

10.times do 
  arr = Array.new(rand(10..20)) { rand(0..100) }.sort.uniq

  to_find = arr.sample

  if binary_search(arr, to_find) == arr.index(to_find)
    puts 'Ok'
  else
    puts 'Fail'
  end
end