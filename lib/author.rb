class Author
  #any instance of author will have the ability to read and write name and author
  attr_accessor :name, :author
  #each instance will be initialized with name
  def initialize(name)
    @name = name
  end
  #posts method will return the array of all the posts from the Posts class
  def posts
    Post.all
  end
  #add_post takes in an argument of post. we are setting the author equal to self,
  #since each author instance is iniialized with a name
  def add_post(post)
    post.author = self.name
  end

  def add_post_by_title(post)
    post = Post.new(post)
    post.author = self
  end

  def self.post_count
    Post.all.count
  end
end