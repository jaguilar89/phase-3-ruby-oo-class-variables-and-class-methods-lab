require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @@count += 1
        @@genres << genre
        @@artists << artist
        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count 
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count_hash = {}
    
        @@genres.each do |genre|
            if genre_count_hash.key?(genre)
                genre_count_hash[genre] += 1
            else
                genre_count_hash[genre] = 1
            end
    end
    genre_count_hash
    end

    def self.artist_count
        artist_count_hash = {}
    
        @@artists.each do |artist|
            if artist_count_hash.key?(artist)
                artist_count_hash[artist] += 1
            else
                artist_count_hash[artist] = 1
            end
    end
    artist_count_hash
    end
end

=begin 
a = Song.new("songA", "artistA", "pop")
b = Song.new("songB", "artistB", "rock")
c = Song.new("songC", "artistC", "rap")
d = Song.new("songD", "artistD", "rock")
e = Song.new("songE", "artistE", "rap")
binding.pry 
=end