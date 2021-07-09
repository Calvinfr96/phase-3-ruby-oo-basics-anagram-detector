# Your code goes here!
class Anagram
    attr_reader :word

    def initialize(word)
        @word = word
    end

    def match(possible_anagrams_array)
        matches = []
        possible_anagrams_array.each do |possible_anagram|
            if possible_anagram.split("").sort.join == @word.split("").sort.join
                matches << possible_anagram
            end
        end
        matches
    end
end