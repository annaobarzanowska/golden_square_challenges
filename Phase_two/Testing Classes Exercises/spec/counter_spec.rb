require 'counter'

RSpec.describe Counter do
    it "adds the numbers add to variable count" do
        count = Counter.new
        count.add(5)
        count.add(5)
        count.add(-3)
        result = count.report()
        expect(result).to eq "Counted to 7 so far."
    end
end
