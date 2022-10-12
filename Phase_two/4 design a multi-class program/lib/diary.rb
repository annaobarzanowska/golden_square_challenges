class Diary
    def initialize
        @entry = []
        @tasks = []
    end

    def add_diary(entry)
        @entry << entry
    end

    def add_task(task)
        @tasks << task
    end

    def all_tasks
        return @tasks
    end

    def read_all
        return @entry
    end

    def readable_entry(wpm, time)
        fail "WPM must be above zero" unless wpm.positive?
        words_we_can_read = wpm * time
        @entry.filter { |v| v.word_count == words_we_can_read }
    end
    def task_list
        
    end
end
