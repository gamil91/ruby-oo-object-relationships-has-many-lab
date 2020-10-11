require 'pry'

class Song

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :name, :artist
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        @@all.find do |song_obj|
            if song_obj.artist == nil
                return nil
            else
                return song_obj.artist.name
            end
        end
    end

end