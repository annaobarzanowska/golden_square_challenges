class Diary
    def initialize
        @entries = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
      # Returns nothing
      @entries << entry
    end
  
    def all
      return @entries
    end
  
    def count_words
      # Returns the number of words in all diary entries (contents, not title)
      # HINT: This method should make use of the `count_words` method on DiaryEntry.
      return @entries.sum(&:count_words)
    end
  
    def reading_time(wpm) # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # if the user were to read all entries in the diary.
      fail "WPM must be above zero" unless wpm.positive?
      (count_words / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
        fail "WPM must be above zero" unless wpm.positive?    
        readable_entries(wpm, minutes).max_by do |entry|
            entry.count_words
        end
    end

    private

    def readable_entries(wpm, minutes)
        @entries.filter do |entry|
            entry.reading_time(wpm) <= minutes
        end
    end
end