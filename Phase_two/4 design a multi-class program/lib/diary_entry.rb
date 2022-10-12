class DiaryEntry
    def initialize(title, content)
        @title = title
        @content = content
    end
    def title
        @title
        end
    def content
        @content
    end

    def word_count
        @content.split(" ").length
    end

end