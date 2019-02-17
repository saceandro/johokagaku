def fibonacci(n)
  array = Array.new(n+1)
  a = 1
  b = 1
  c = 2
  array[0]=1
  array[1]=1
  array[2]=2
  for i in 3..n
    a = b
    b = c
    c = a+b
    array[i]=c
  end
  array
end
