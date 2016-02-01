module FunWithStrings
  def palindrome?
    str = self.downcase.gsub(/[^a-z0-9]/, "")
    return str == str.reverse
  end
  def count_words
    strs = self.strip.downcase.gsub(/[^a-z0-9 ]/, "").split(/ +/)
    words = Hash.new(0)
    strs.each do |str|
      words[str] = words[str] + 1
    end
    return words
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
