class Post
  attr_accessor :name, :author

@@all = []

def initialize(title)
  @title = title
  @@all << self
end

def self.all
  @@all
end

def title
  @title
end

def author
  @author
end

def author_name
  @author.name
  # if @author_name == []
  #   nil
  # end
end


end
