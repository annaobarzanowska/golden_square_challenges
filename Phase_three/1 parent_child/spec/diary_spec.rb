require 'diary'

RSpec.describe Diary do
    it "adds an entry" do
        diary = Diary.new
        fake_diary_entry_1 = double :fake_diary_entry
        fake_diary_entry_2 = double :fake_diary_entry
        diary.add(fake_diary_entry_1)
        diary.add(fake_diary_entry_2)
        expect(diary.entries).to eq [fake_diary_entry_1, fake_diary_entry_2]
    end

    it "counts words in the entries given"do
        diary = Diary.new
        fake_diary_entry_1 = double :fake_diary_entry, count_words: 2 # the double should have a name, has a method called 'count_words' which takes the number 2
        fake_diary_entry_2 = double :fake_diary_entry, count_words: 3 # the double should have a name, has a method called 'count_words' which takes the number 3
        diary.add(fake_diary_entry_1)
        diary.add(fake_diary_entry_2)
        expect(diary.count_words).to eq 5  
    end

end
