#write your code here
def translate(str)
  str.gsub!(/[\w']+/) do |word|
    if word[0,1] == word[0,1].upcase
      ver = true
    else
      ver= false
    end
    if(word[0,1] == 'a' || word[0,1] == 'i' || word[0,1] == 'u' ||
       word[0,1] == 'e' || word[0,1] == 'o')
      word = word + "ay"
    else
      num = 1
      if word[0,2] == "qu"
        num = 2
      else
        if word[0,3] == "sch"
          num = 3
        end
      end
      while(word[num, 1] != 'a' && word[num, 1] != 'i' && word[num, 1] != 'u' &&
            word[num, 1] != 'e' && word[num, 1] != 'o') do
        num +=1
      end
      if word[num-1..num] == "qu"
        num += 1
      end
      word = word[num..word.length] + word[0, num] + 'ay'
    end
    if ver == true
      word.capitalize!
    end
    word
  end
end