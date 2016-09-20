#write your code here
def echo(str)
  str
end
def shout(str)
  str.upcase
end
def repeat(str, num=2)
  arr = []
  num.times do |i|
    arr[i] = str
  end
  arr.join ' '
end
def start_of_word(str, num)
  str[0,num]
end
def first_word(str)
  str.partition(" ").first
end
def titleize(str)
  lw = ['on', 'under', 'and', 'or', 'over', 'many', 'few', 'several', 'none', 'no', 'of', 'much', 'not', 'the', 'some', 'most', 'enough', 'lots', 'plenty', 'lack', 'a', 'an', 'but', 'so', 'with', 'without', 'any', 'this', 'that', 'which', 'who', 'what', 'these', 'those']
  arr = str.split(' ')
  arr.length.times do |i|
    if i > 0
      v = false
      j = 0
      while j < lw.length do
        if lw[j] == arr[i]
          v = true
          break
        end
        j+=1
      end
      if v == false
        arr[i].capitalize!
      end
    else
      arr[i].capitalize!
    end
  end
  arr.join(' ')
end