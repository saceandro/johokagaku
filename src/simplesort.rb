def min_index(a,i)
  min = i
  for j in i+1..(a.length-1)
    if a[j] < a[min]
      min = j
    end
  end
  min
end

def simplesort(a)
  for i in 0..a.length-2
    m = min_index(a,i)
    p = a[i]
    a[i] = a[m]
    a[m] = p
  end
  a
end
