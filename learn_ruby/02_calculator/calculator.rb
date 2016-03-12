def add (term1,term2)
  term1 + term2
end

def subtract (subtrahend1,subtrahend2)
  subtrahend1 - subtrahend2
end

def sum (array)
  result = 0
  array.each { |elem| result += elem }
  result
end

# Extra Credit Test-Driving Bonus

def multiply (arg1, arg2, *many_arg)
  result = arg1 * arg2
  many_arg.each {|elem| result *= elem }
  result
end

def  power (num1,num2)
  num1 ** num2
end

def factorial (f)
  return 1  if f == 0 or f == 1
  fac = 1
  loop do
    break if f == 1
    fac = fac * f
    f -= 1
  end
  fac
end
