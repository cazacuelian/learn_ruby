class Book
# write your code here
  attr_writer :title
  def title
    arr = ["a", "an", "the", "for", "and", "nor", "but", "or", "yet", "so",
           "after", "although", "as", "though", "because", "before", "by", "even",
           "if", "lest", "once", "only", "since", "than", "that", "till", "unless", "until",
           "when", "whenever", "where", "wherever", "while", "both", "either", "neither",
           "not", "no", "wheter", "aboard", "about", "above", "across", "after", "against", "along",
           "amid", "among", "anti", "around", "as", "at", "before", "behind", "below", "beneath",
           "beside", "besides", "between", "beyond", "but", "by", "concerning", "considering",
           "despite", "down", "during", "except", "excepting", "excluding", "following", "for",
           "from", "in", "inside", "into", "like", "minus", "near", "of", "off", "on", "onto",
           "opposite", "outside", "over", "past", "per", "plus", "regarding", "round", "save",
           "since", "than", "through", "to", "toward", "towards", "under", "underneath", "unlike", 
           "until", "up", "upon", "versus", "via", "with", "within", "without"]
    cont = 1
    @title.gsub!(/[\w']+/) do |word|
      if(word == "i" || cont == 1)
        word.capitalize!
      else
        ver = true
        arr.each do |w|
          if word == w
            ver = false
            break
          end
        end
        if ver == true
          word.capitalize!
        end
      end
      cont +=1
      word
    end
  end
end
