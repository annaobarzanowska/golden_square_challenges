require 'lib_track'

RSpec.describe Track do
    it "contstructs" do
        track = Track.new("my title", "my artist")
        expect(track.title).to eq "my title"
        expect(track.artist).to eq "my artist"
    end

    it "formats the title and artist into a single string" do
        track = Track.new("Diana", "Michael Jackson")
        expect(track.format).to eq "Diana by Michael Jackson"
    end

end