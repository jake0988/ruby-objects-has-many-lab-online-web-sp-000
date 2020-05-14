class Author
  attr_accessor :name, :posts

def initialize(name)
  @name = name
  @posts = []
end

def posts
  Post.all.select {|post| post.author == self}
end

def add_post(post)
  new_post = post.author = self
  new_post
  @@all << new_post
end

def add_post_by_title(title)
  post = Post.new(title)
  post.name = self
  @@all << post
end

def self.post_count
 count = @@all.count
 count
end

end
