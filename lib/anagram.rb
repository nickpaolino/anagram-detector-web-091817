require 'pry'

class Anagram
  attr_accessor :match_word, :words

  def initialize(match_word)
    @match_word = match_word
  end

  def match(words_to_match)
    words_to_match.select do |word|
      word.split("").all? do |char|
        word.count(char) == match_word.count(char)
      end
    end
  end
end
