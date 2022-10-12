require 'diary_entry'

RSpec.describe DiaryEntry do
    it "constructs" do
        diary_entry = DiaryEntry.new("Monday", "feeling groovy")
        expect(diary_entry.title).to eq "Monday"
        expect(diary_entry.contents).to eq "feeling groovy"
    end

    describe "#count_words" do
        it "counts the words in the contents" do
        diary_entry = DiaryEntry.new('monday', 'one two three four')
        expect(diary_entry.count_words).to eq 4
        end

        it "returns zero if contents is empty" do
        diary_entry = DiaryEntry.new('monday', '')
        expect(diary_entry.count_words).to eq 0
        end
    end
    describe "#reading_time" do
        it "returns reading time in minutes for content" do
        diary_entry = DiaryEntry.new('monday', 'one two three four five')
        expect(diary_entry.reading_time(2)).to eq 3
        end

        it "returns zero if contents is empty" do
        diary_entry = DiaryEntry.new('monday', '')
        expect(diary_entry.reading_time(2)).to eq 0
        end
    end

end