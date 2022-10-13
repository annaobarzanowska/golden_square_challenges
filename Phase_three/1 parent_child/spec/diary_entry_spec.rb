require 'diary_entry'

RSpec.describe DiaryEntry do
    it "constucts" do
        diary_entry = DiaryEntry.new("title", "my content")
        expect(diary_entry.content).to eq "my content"
        expect(diary_entry.title).to eq "title"
    end

    it "counts the words in content" do
        diary_entry = DiaryEntry.new("title", "my content")
        expect(diary_entry.count_words).to eq 2
    end
end
