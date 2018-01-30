class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    matches = []
    split_word = @word.split("").sort
    array.each do |array_word|
      split_array_word = array_word.split("").sort
      matches << array_word if split_word == split_array_word
    end
    matches
  end
end
