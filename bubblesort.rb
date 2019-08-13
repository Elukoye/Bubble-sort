def bubble_sort(array)
  switch = true
  while switch
    switch = false 
    for i in (0...array.length - 1)
      if array[i] > array[i + 1]
        switch = true 
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end  
  array 
end

def bubble_sort_by(array)
  for element in (0...array.length - 1)
    for item in (0...array.length - 1)
      array[item], array[item +1] = array[item +1],array[item] if yield(array[item], array[item + 1]) > 0
    end
  end
  return array
end


a =bubble_sort_by(['hi','hello','hey']) do |left,right|
  left.length - right.length
end
print a
