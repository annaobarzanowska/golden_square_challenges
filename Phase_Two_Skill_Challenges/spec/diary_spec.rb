require "diary"

RSpec.describe DiaryEntry do
    it "outputs the title" do
        diary = DiaryEntry.new('monday', ('this is a string ' * 5))
        expect(diary.title).to eq 'monday'
    end

    it "outputs the contents" do
        diary = DiaryEntry.new('monday', ('this is a string ' * 5))
        expect(diary.contents).to eq 'this is a string this is a string this is a string this is a string this is a string '
    end

    it "counts the number of words in the contents as an integer" do
        diary = DiaryEntry.new('monday', ('this is a string ' * 5))
        expect(diary.count_words).to eq 20
    end

    it "counts the number of words in the contents as an integer" do
        diary = DiaryEntry.new('monday', ('this is a string ' * 6))
        expect(diary.count_words).to eq 24
    end
    it "returns zero when contents is empty" do
        diary = DiaryEntry.new('monday', "")
        expect(diary.count_words).to eq 0
    end
    it "returns an integer representing estimated reading time of contents in wpm" do
        diary = DiaryEntry.new('monday', ('this is a string ' * 6))
        expect(diary.reading_time(6)).to eq 4
    end

    it "returns an integer representing estimated reading time of contents in wpm" do
        diary = DiaryEntry.new('monday', ('this is a string ' * 500))
        expect(diary.reading_time(200)).to eq 10
    end

    it "returns zero reading time when contents is empty" do
        diary = DiaryEntry.new('monday', "")
        expect(diary.reading_time(6)).to eq 0
    end

    it "returns the full contents" do
        diary = DiaryEntry.new('monday', ('this is a string'))
        chunk = diary.reading_chunk(200, 1)
        expect(chunk).to eq 'this is a string'
    end
    it "returns a readable chunk if not enough time to read all contents" do
        diary = DiaryEntry.new('monday', ('this is a string'))
        chunk = diary.reading_chunk(2, 1)
        expect(chunk).to eq 'this is'
    end

    it "returns next chunk next time it's asked" do
        diary = DiaryEntry.new('monday', ('this is a string'))
        chunk = diary.reading_chunk(2, 1)
        expect(chunk).to eq 'a string'
    end
end