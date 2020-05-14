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
  post.author = self
  post
end

def add_post_by_title(title)
  post = Post.new(title)
  post.name = self
end

def self.post_count(title)
  post = Post.new(title)
  post.name

end

end
