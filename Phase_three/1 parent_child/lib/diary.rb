class Diary
    def initialize
        @entry = []
    end
    def add(entry) # entry is an instance of DiaryEntry
        @entry << entry
    end

    def entries 
        # returns a list of DiaryEntries
        @entry
    end

    def count_words
        # returns the number of words in entries
        return @entry.sum(&:count_words)
    end

end
