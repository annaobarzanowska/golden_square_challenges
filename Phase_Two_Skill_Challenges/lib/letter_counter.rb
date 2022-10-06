class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def calculate_most_common()
      counter = Hash.new(0)
      most_common = nil
      most_common_count = 0
      @text.chars.each do |char| #take each character of the string
        next unless is_letter?(char) #unless it isn't a character
        counter[char] = (counter[char] || 1) + 1 # for every key in counter hash, add 1 to its value
        if counter[char] > most_common_count # if the value of the key in the counter hash is lower than the value of the most common count
          most_common = char # add the character to the most_common variable
          most_common_count = counter[char] # add the value of the counter key to most_common_count
        end
      end
      return [most_common_count, most_common]
    end
  
    private
  
    def is_letter?(letter)
      return letter =~ /[a-z]/i
    end
  end
  
  counter = LetterCounter.new("Digital Punk")
  p counter.calculate_most_common
  
  # Intended output:
  # [2, "i"]