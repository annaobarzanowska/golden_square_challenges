require 'tracks'

RSpec.describe MusicListening do
    it "no track added if empty" do
        tracks = MusicListening.new
        expect(tracks.add_tracks('')).to eq ['']
    end

    it "adds new tracks" do
        tracks = MusicListening.new
        expect(tracks.add_tracks('Crisps')).to eq ['Crisps'] 
    end

    it "lists tracks user has added" do
        tracks = MusicListening.new
        tracks.add_tracks('Crisps')
        tracks.add_tracks('Feeling Savoury')
        expect(tracks.list_tracks).to eq ['Crisps', 'Feeling Savoury']
    end
end
