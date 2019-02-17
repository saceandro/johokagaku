def f(x)
  x/(x+1.0)/(x+2.0)
end

class Nint
  def initialize(function)
    @f = Object.method(function)
  end
  def trapezoid(xs,xe,n)
    deltax = 1.0*(xe-xs)/n
    sum = (@f.call(xs)+@f.call(xe))/2.0
    for i in 1..n-1
      sum = sum + @f.call(xs+i*deltax)
    end
    deltax*sum
  end
  def simpson(xs,xe,n)
    deltax = (xe-xs)/2.0/n
    sum = @f.call(xs)+4*@f.call(xs+deltax)+@f.call(xe)
    for i in 1..n-1
      sum = sum + 2*@f.call(xs+2*i*deltax)+4*@f.call(xs+(2*i+1)*deltax)
    end
    deltax*sum/3.0
  end
  def montecarlo_f(xs,xe,n)
    f_xs = @f.call(xs)
    f_xe = @f.call(xe)
    if f_xs<f_xe
      max = f_xe
    else
      max = f_xs
    end
    m = 0
    for i in 1..n
      x = xs + rand()*(xe-xs)
      y = rand()*max
      if y < @f.call(x)
        m = m+1
      end
    end
    1.0*(xe-xs)*max*m/n
  end
end
