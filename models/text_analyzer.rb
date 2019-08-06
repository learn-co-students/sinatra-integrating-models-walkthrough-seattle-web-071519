# Your TextAnalyzer model code will go here.
class TextAnalyzer
    attr_accessor :text, :word_count, :vowels, :consonants, :most_used_times
    def initialize(string)
        @text = string
        @text = @text.downcase  
        @word_count = 1 + @text.count(" ")
        @vowels = @text.count("aeiou")
        @consonants = @text.length - @text.count("ae iou")

    end

    def most_used_char
        alphabet = "abcdefghijklmnopqrstuvwxyz".split("") 
        spaces = text.count(" ") 
        most_used = 0 
        most_used_times = 0 
        alphabet.each do |char|  
         if text.count(char) >= most_used_times 
             most_used = char  
             most_used_times = text.count(char)  
         end  
        end  
        @most_used_times = @text.count(most_used)
        return most_used
    end

end