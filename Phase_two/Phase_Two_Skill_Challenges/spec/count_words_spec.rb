# A method called count_words that takes a string as an argument and returns the number of words in that string.

require 'count_words'

RSpec.describe 'count_words method' do
    it 'returns the number of words in a string' do
        result = count_words('this is a string')
        expect(result).to eq 4
    end

end