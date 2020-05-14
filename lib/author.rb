class Author
  attr_accessor :name, :posts
  @@all = []

def initialize(name)
  @name = name
  @posts = []
  @@all << @name
end

def posts
  @posts << @name
end

def add_post(post)
  post.name = self
end

def add_post_by_title(title)
  post = Post.new(title)
  post = self.post
end

def self.post_count

end

end
