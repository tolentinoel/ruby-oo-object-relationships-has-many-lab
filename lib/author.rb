class Author

    attr_accessor :name
    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def posts
      Post.all.select do |post|
        post.author == self
      end
    end

    def add_post(post)
      post.author = self
    end

    def add_post_by_title(string)
      post = Post.new(string)
      post.author = self
    end


    def self.post_count
      Post.all.count
    end

end