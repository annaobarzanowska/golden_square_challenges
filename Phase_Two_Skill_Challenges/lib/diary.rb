class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      # ...
      @title = title
      @contents = contents
      @furthest_word_read = 0
    end
  
    def title
      # Returns the title as a string
      return @title
    end
  
    def contents
      # Returns the contents as a string
      return @contents
    end
  
    def count_words
        @contents.split(" ").length
    end
  
    def reading_time(wpm) # wpm is an integer representing the number of words the
       (count_words / wpm.to_f).ceil
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
    end
  
    def reading_chunk(wpm, minutes) 
        words_we_can_read = wpm * minutes
        start_from = @furthest_word_read
        end_at = @furthest_word_read + words_we_can_read
        word_list = words[start_from, end_at]
        @furthest_word_read = end_at
        return word_list.join(" ")
    end

    private

    def words
        return @contents.split(" ")
    end
end


# diary = DiaryEntry.new('monday', ('this is a string ' * 5))
# puts diary
# puts diary.title
# puts diary.contents
# puts diary.count_words
# puts diary.reading_time(6)


