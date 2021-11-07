
def quick_sort(array)
  if array.size < 2
    array
  else
    array = array.dup  
    pivot = array.shift

    smaller, bigger = [], []
    
    array.each do |el|
      if el < pivot
        smaller << el
      else
        bigger << el
      end
    end

    quick_sort(smaller) + [pivot] + quick_sort(bigger)
  end
end

10.times do 
  arr = Array.new(rand(10..20)) { rand(0..100) }

  if quick_sort(arr) == arr.sort
    puts 'Ok'
  else
    puts 'Fail'
  end
end
