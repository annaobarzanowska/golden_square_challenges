class MusicListening
    def initialize
        @tracks = []
    end
    def add_tracks(track)
        @tracks << track
    end

    def list_tracks
        @tracks
    end
end