def bubble_sort(array)
  timer = array.length - 1
  array.each do
    a = 0
    b = 1
    timer.times do
      if array[a].to_i > array[b].to_i
        array[a], array[b] = array[b], array[a]
      end
      a += 1
      b += 1
    end
  end
  p array
end

bubble_sort([12, 73, 178, 2, 10, 2])
