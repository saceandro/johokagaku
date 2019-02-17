def make1d(n)
  Array.new(n){0}
end

def make2d(m,n)
  a = Array.new(m)
  for i in 0..m-1
    a[i] = Array.new(n){0}
  end
  a
end
