require 'track'

RSpec.describe Track do
    it "matches when given keyword" do
        track = Track.new("MJ", "Beat it")
        expect(track.matches?('MJ')).to eq true
    end
end