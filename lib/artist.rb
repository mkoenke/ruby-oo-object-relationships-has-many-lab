class Artist
    attr_accessor :name, :song

   # @@song_count = 0
    @@all = []

    def initialize(name)
        @name = name
       # @@all << self

    end

    def add_song(song_title)
        song_title.artist = self
    end

    def songs
        Song.all
    end

    def self.song_count
        Song.all.length
    end


    def add_song_by_name(song_title)
        song = Song.new(song_title)
        song.artist = self
    end

    

end
