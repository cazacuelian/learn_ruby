#write your code here
def ftoc(temp)
  ((temp - 32.0) *5 / 9).to_i
end
def ctof(temp)
  temp * 9.0 / 5.0 + 32.0
end