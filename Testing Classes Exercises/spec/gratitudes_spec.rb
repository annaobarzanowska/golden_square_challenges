require 'gratitudes'

RSpec.describe Gratitudes do
    it "displays the gratitudes" do
        grateful = Gratitudes.new
        grateful.add('beauty')
        grateful.add('poufy')
        grateful.add('the number 3')
        result = grateful.format()
        expect(result).to eq "Be grateful for: beauty, poufy, the number 3"
    end
end