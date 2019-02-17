def gj(a)
  row = a.length
  col = a[0].length
  for k in 0..row-1
    akk = a[k][k]
    for i in k..(col-1)
      a[k][i] = a[k][i]*1.0/akk
    end
    for j in 0..row-1
      if j!=k
        ajk = a[j][k]
        for i in k..(col-1)
          a[j][i] = a[j][i] - ajk*a[k][i]
        end
      end
    end
  end
  a
end

def gjp(a)
  row = a.length
  col = a[0].length
  for k in 0..row-1
    max = maxrow(a,k)
    swap(a,k,max)
    akk = a[k][k]
    for i in k..(col-1)
      a[k][i] = a[k][i]*1.0/akk
    end
    for j in 0..row-1
      if j!=k
        ajk = a[j][k]
        for i in k..(col-1)
          a[j][i] = a[j][i] - ajk*a[k][i]
        end
      end
    end
  end
  a
end

def maxrow(a,k)
  row = a.length
  maxrow = k
  for i in k+1..(row-1)
    if a[maxrow][k].abs < a[i][k].abs
      maxrow = i
    end
  end
  maxrow
end

def swap(a,i,j)
  p = a[i]
  a[i] = a[j]
  a[j] = p
end

def eq1()
  [[1,1,-1,2],\
   [3,5,-7,0],\
   [2,-3,1,5]]
end

def eq2()
  [[1,-50,-3,-90],\
   [-85,2,-25,-6],\
   [79,5,30,-1]]
end
