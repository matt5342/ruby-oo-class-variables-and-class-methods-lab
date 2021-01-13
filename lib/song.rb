class Song
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end
    def self.count 
        @@count
    end
    def self.artists
        @@artists = @@artists.uniq
    end
    def self.genres
        @@genres = @@genres.uniq
    end
    def self.genre_count
        genre_hash = {}
        @@genres.uniq.each do |element|
                genre_hash[element] = @@genres.count(element)
        end
            genre_hash
    end
    def self.artist_count
        artist_hash = {}
        @@artists.uniq.each do |element|
            artist_hash[element] = @@artists.count(element)
        end
        artist_hash
    end


end
