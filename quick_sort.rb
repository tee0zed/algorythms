
def quick_sort(array)

  if array.size < 2
    array
  else
    pivot = array.shift
    small, big = [], []
    array.each do |el|
      if el < pivot
        small << el
      else
        big << el
      end
    end
    return quick_sort(small) + [pivot] + quick_sort(big)
  end
end

arr = [123313, 4, 14, 235, 23, 2, 55]

puts quick_sort(arr)
