class DiaryEntry
    def initialize(title, content)
        @title = title
        @content = content
    end

    def title
        return @title
    end

    def content
        return @content
    end
    
    def count_words
        return @content.split(" ").length
    end
end