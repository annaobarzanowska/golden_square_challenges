require 'personal_diary'
# A method called make_snippet that takes a string as an argument and returns the first five words and then a '...' if there are more than that.

RSpec.describe 'make_snippet method' do
    it "returns '...' at the end if there are more than 5 words" do
        result = make_snippet('this is a string and there are more than 5 words')
        expect(result).to eq 'this is a string and...'
    end
    it "returns the string if there are less than five workds" do
        result = make_snippet('this is')
        expect(result).to eq ('this is')
    end
end