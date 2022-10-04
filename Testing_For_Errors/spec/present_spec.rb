require 'present'

RSpec.describe Present do
    it "wraps and unwraps some contents" do
        present = Present.new
        present.wrap("book")
        expect(present.unwrap).to eq "book"
    end

    it "fails if we unwrap without wrapping first" do
        present = Present.new
        expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end

    it "fails if we've already wrapped" do
        present = Present.new
        present.wrap('book')
        expect { present.wrap('bicycle') }.to raise_error "A contents has already been wrapped."
    end
end