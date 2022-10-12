require 'reading_time'

RSpec.describe 'reading_time method' do
    it "gives reading time of text, assuming user reads 200wpm" do
        result = reading_time("one two")
        expect(result).to eq 1
    end


end