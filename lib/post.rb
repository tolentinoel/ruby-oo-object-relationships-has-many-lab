class Post

  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    pool
  end

  def self.all
    @@all
  end

  def pool
    @@all << self
  end



  def author_name
    if self.author == nil
      return nil
    else
      return self.author.name
    end
  end


end