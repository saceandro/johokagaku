load("makearray.rb")

def merge(a,b)
  la = a.length
  lb = b.length
  c = Array.new(la+lb)
  ia = 0
  ib = 0
  ic = 0
  while ia < la && ib < lb
    if a[ia] < a[ib]
      c[ic] = a[ia]
      ia = ia + 1
    else
      c[ic] = b[ib]
      ib = ib + 1
    end
    ic = ic + 1
  end
  while ia < la
    c[ic] = a[ia]
    ia = ia + 1
    ic = ic + 1
  end
  while ib < lb
    c[ic] = b[ib]
    ib = ib + 1
    ic = ic + 1
  end
  c
end

def mergesort(a)
  n = a.length
  from = Array.new(n)
  for i in 0..n-1
    from[i] = [a[i]]
  end
  while n > 1
    to = Array.new((n+1)/2)
    for i in 0..n/2-1
      to[i] = merge(from[2*i],from[2*i+1])
    end
    if n%2 != 0
      to[(n-1)/2] = from[n-1]
    end
    from = to
    n = (n+1)/2
  end
  from[0]
end
  
