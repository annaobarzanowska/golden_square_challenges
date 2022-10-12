require 'diary'
require 'diary_entry'

RSpec.describe 'integration' do
    context "after adding entries" do
        it "lists out the entries added" do
            diary = Diary.new
            entry1 = DiaryEntry.new('monday', 'feeling blue')
            entry2 = DiaryEntry.new('tuesday', 'feeling better')
            diary.add(entry1)
            diary.add(entry2)
            expect(diary.all).to eq [entry1, entry2]
        end
    end

    describe "#count_words" do
        it "counts the words in all diary entries" do
            diary = Diary.new
            entry1 = DiaryEntry.new('monday', 'feeling blue')
            entry2 = DiaryEntry.new('tuesday', 'feeling better')
            diary.add(entry1)
            diary.add(entry2)
            expect(diary.count_words).to eq 4
        end

    end

    describe "reading time behaviour" do
        it "calculates the reading time for all entres" do
            diary = Diary.new
            entry1 = DiaryEntry.new('monday', 'feeling blue')
            entry2 = DiaryEntry.new('tuesday', 'feeling better 3')
            diary.add(entry1)
            diary.add(entry2)
            expect(diary.reading_time(2)).to eq 3
        end

        it "fails where wpm is O" do
            diary = Diary.new
            entry1 = DiaryEntry.new('monday', 'feeling blue feeling blue feeling blue')
            diary.add(entry1)
            expect { diary.reading_time(0) }.to raise_error "WPM must be above zero"
        end
    end
    describe "best reading time entry behaviour" do
            it "fails where wpm is 0" do
                diary = Diary.new
                entry1 = DiaryEntry.new('monday', 'feeling blue')
                diary.add(entry1)
                expect { diary.find_best_entry_for_reading_time(0, 1) }.to raise_error "WPM must be above zero"
            end
        context "where we have one entry and readable in the time" do
            it "returns that entry" do
                diary = Diary.new
                entry1 = DiaryEntry.new('monday', 'feeling blue')
                diary.add(entry1)
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq entry1
            end
        end

        context "where we just have one entry and it is unreadable in the time" do
            it "returns nil" do
                diary = Diary.new
                entry1 = DiaryEntry.new('monday', 'feeling blue blue')
                diary.add(entry1)
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq nil
            end
        end

        context "where we have multiple entries" do
            it "returns the longest entry you can read in the time" do
                diary = Diary.new
                best_extract = DiaryEntry.new('monday', 'feeling blue')
                diary.add(DiaryEntry.new('my title', 'feeling'))
                diary.add(DiaryEntry.new('my title', 'feeling so very blue'))
                diary.add(DiaryEntry.new('my title', 'feeling so blue'))   
                diary.add(best_extract) 
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq best_extract
            end
        end
    end

end