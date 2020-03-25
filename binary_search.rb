def binary_search(array, item)
  low_point = 0
  high_point = array.size - 1

  while high_point >= low_point do
    mid = (high_point + low_point)/2
    guess = array[mid]

    if guess == item
      return mid
    elsif guess > item
      high_point = mid - 1
    else
      low_point = mid + 1
    end
  end
  return nil
end

puts binary_search([1,2,3,4,5,8,11,123,10009,23000, 33000], 33020)
