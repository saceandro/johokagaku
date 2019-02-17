def merge_rec(a,l,r)
  if l==r
    [a[l]]
  else
    m = (l+r)/2
    merge(merge_rec(a,l,m),merge_rec(a,m+1,r))
  end
end

def mergesort_r(a)
  merge_rec(a,0,a.length-1)
end
