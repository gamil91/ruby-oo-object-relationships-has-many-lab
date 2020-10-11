class Post

@@all = []

def self.all
    @@all
end

attr_accessor :title, :author

    def initialize(title)
        @title = title
        @@all << self
    end

    def author_name
        @@all.find do |post| 
            if post.author == nil
                return nil
            else 
                return post.author.name
            end
        end
    end




end