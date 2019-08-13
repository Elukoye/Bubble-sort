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
  switch = true
  while switch
    for i in (0...array.length - 1)
      result = yield(array[i],array[i + 1])
      if result > 0
        array[i], array[i + 1] = array[i + 1], array[i]
      else 
        switch = false
      end
    end
  end  
end
