module FunWithStrings
  def palindrome?
    str = self.downcase.gsub(/\W/, "")
    return str == str.reverse
  end
  def count_words
    strs = self.strip.downcase.gsub(/[^\w ]/, "").split(/ +/)
    words = Hash.new(0)
    strs.each do |str|
      words[str] += 1
    end
    return words
  end
  def anagram_groups
    words = self.strip.gsub(/[^\w ]/, "").split(/ +/)
  # Create a hash whose default is the empty array; you have to do it like the below in Ruby
    hash = Hash.new{ |h, k| h[k] = [] }
    words.each do |word|
    # For each word, convert it into a sorted sequence of characters; every anagram group will have the exact same sequence
      standard_word = word.downcase.chars.sort.join
      hash[standard_word] << word
    end
    return hash.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
