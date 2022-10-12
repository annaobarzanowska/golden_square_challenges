require 'string_builder'

RSpec.describe StringBuilder do
    it "returns the length of the string" do
        length = StringBuilder.new
        length.add('computer')
        result = length.size()
        expect(result).to eq 8
    end

    it "returns the string" do 
        output = StringBuilder.new
        output.add('computer')
        result = output.output()
        expect(result).to eq 'computer'
    end

end