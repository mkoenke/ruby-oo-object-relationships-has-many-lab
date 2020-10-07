class Author
    attr_accessor :name, :post

    @@all = []

    def initialize(name)
        @name = name

    end

    def add_post(post_title)
        post_title.author = self
    end

    def posts
        Post.all
    end

    def self.post_count
        Post.all.length
    end


    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
    end

    

end
