def count(a,max)
  c = Array.new(max){0}
  for i in 0..a.length-1
    j = a[i]
    c[j] = c[j] + 1
  end
  c
end

def rebuild(c,n)
  b = Array.new(n)
  k = 0
  l = c.length
  for i in 0..l-1
    for j in 1..c[i]
      b[k] = i
      k = k + 1
    end
  end
  b
end

def binsort(a,max)
  rebuild(count(a,max),a.length)
end
