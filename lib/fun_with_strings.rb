module FunWithStrings
  def palindrome?
    string = self.downcase.delete("^a-zA-Z")
    string == string.reverse
  end
  
  def count_words
    wordHash = Hash.new
    string = self.downcase.gsub(/\s/, " ").delete("^Z-Za-z ")
    words = string.split(" ")
    words.each do  |w|
      if wordHash.key? w
        wordHash[w] += 1
      else
        wordHash[w] = 1
      end
    end
    return wordHash
  end
  
  def anagram_groups
    wordsArr =[]
    words = self.downcase.split(" ")
    
    wordsArr = words.group_by{ |w| w.chars.sort}.values
    
    
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
