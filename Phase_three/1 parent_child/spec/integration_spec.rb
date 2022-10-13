require 'diary'
require 'diary_entry'

RSpec.describe 'Integration' do
    it "counts the words in all entries" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("title_1", "one two")
        entry_2 = DiaryEntry.new("title_2", "three, four, five")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.count_words).to eq 5
    end
end