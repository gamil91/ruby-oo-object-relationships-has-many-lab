class Author

    def self.post_count
        Post.all.count 
    end
    
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post_obj)
        post_obj.author = self
    end

    def add_post_by_title(post_title)
        self.add_post(Post.new(post_title))
    end




end