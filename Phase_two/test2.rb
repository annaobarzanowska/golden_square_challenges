class Diary
  def initialize
      @entry = []
  end

  def add(entry)
      @entry << entry
  end

  def read_all
      return @entry
  end
end


class DiaryEntry
  def initialize(title, content)
      @title = title
      @content = content
  end

  
end