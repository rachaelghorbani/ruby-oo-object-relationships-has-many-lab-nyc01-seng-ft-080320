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
  #add_post takes in an argument of post. we are setting the author equal to THE
  #ENTIRE INSTANCE OF THE CURRENT AUTHOR, not just the name
  def add_post(post)
    post.author = self
  end
  #method takes an argument of post. we will set a new post equal to a new instance of
  #our Post class initializign it with the post name
  #now setting post.author equal to the current instance of author

  def add_post_by_title(post)
    post = Post.new(post)
    post.author = self
  end
  #counts how may instances are in the Post.all array

  def self.post_count
    Post.all.count
  end
end