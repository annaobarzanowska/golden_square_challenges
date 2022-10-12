require 'diary'
require 'diary_entry'
require 'phone_numbers'
require 'todo_list'
require 'todo'

RSpec.describe 'integration' do
    it "add entries to diary" do
        diary = Diary.new
        entry_1 = DiaryEntry.new('monday', 'went for a walk')
        entry_2 = DiaryEntry.new('tuesday', 'had fish and chips')
        diary.add_diary(entry_1)
        diary.add_diary(entry_2)
        expect(diary.read_all).to eq [entry_1, entry_2]
    end

    it "returns the most readable chunk in the time available" do
        diary = Diary.new
        entry_1 = DiaryEntry.new('monday', 'went for a walk')
        entry_2 = DiaryEntry.new('tuesday', 'had fish and chips and a sausage')
        entry_3 = DiaryEntry.new('wednesday', 'nothing')
        diary.add_diary(entry_1)
        diary.add_diary(entry_2)
        diary.add_diary(entry_3)
        expect(diary.readable_entry(7, 1)).to eq [entry_2]
    end

    it "fails when wpm is 0" do
        diary = Diary.new
        entry_1 = DiaryEntry.new('monday', 'went for a walk')
        entry_2 = DiaryEntry.new('tuesday', 'had fish and chips and a sausage')
        entry_3 = DiaryEntry.new('wednesday', 'nothing')
        diary.add_diary(entry_1)
        diary.add_diary(entry_2)
        diary.add_diary(entry_3)
        expect{ diary.readable_entry(0, 1) }.to raise_error "WPM must be above zero"
    end

    it "keeps a todo list with diary" do
        diary = Diary.new
        todo_1 = Todo.new('walk the dog')
        todo_2 = Todo.new('brush my teeth')
        diary.add_task(todo_1)
        diary.add_task(todo_2)
        expect(diary.all_tasks).to eq [todo_1, todo_2]
  
    end

    it "makes a list of phone numbers from diary content" do
        diary = Diary.new
        entry_1 = DiaryEntry.new('monday', 'this is my number 01366789456')
        entry_2 = DiaryEntry.new('tuesday', '01223666587 - restaurant')
        entry_3 = DiaryEntry.new('wednesday', '01223666587')
        diary.add_diary(entry_1)
        diary.add_diary(entry_2)
        diary.add_diary(entry_3)
        numbers = PhoneNumbers.new(diary)
        expect(numbers.phone_numbers).to eq ['01366789456','01223666587']
    end
end
