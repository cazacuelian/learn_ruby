#write your code here
def add(num1, num2)
  num1 + num2
end
def subtract(num1, num2)
  num1 - num2
end
def sum(arr)
  s = 0
  i = 0
  while i<arr.length do
    s+=arr[i]
    i+=1
  end
  s
end
def multiply(arr)
  m = 1
  i = 0
  while i<arr.length do
    m*=arr[i]
    i+=1
  end
  if arr.length == 0
    m = 0
  end
  m
end
def pow(num1, num2)
  num1 ** num2
end
def fact(num)
  f = 1
  i = num
  while i>0 do
    f*=i
    i -= 1
  end
  f
end