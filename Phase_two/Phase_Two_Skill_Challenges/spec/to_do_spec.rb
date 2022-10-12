require 'to_do'

RSpec.describe 'to_do method' do
    
    it "is passed an empty argument" do
        result = to_do("")
        expect(result).to eq 'No to-do items'
    end

    it "includes a string of #TODO" do
        result = to_do("this is a string with a #TODO item")
        expect(result).to eq "This includes a to-do item"
    end

    it "only includes #TODO" do
        result = to_do("#TODO")
        expect(result).to eq "No to-do items"
    end

    it "does not include #TODO string" do
        result = to_do('this is just a plain string')
        expect(result).to eq "No to-do items"
    end

end