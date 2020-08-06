class Post
  #any instance of post has the ability to write/read a title and author method
  attr_accessor :title, :author
  #class variable set to an empty array that will eventually collect all the posts
  @@all = []
  #upon initializing a new instance, must give it a title, and put the entire instance 
  #ont the @@all class variable array
  def initialize(title)
    @title = title
    @@all << self
  end
  #class method all returns the class variable all
  def self.all
    @@all
  end
  #author name method so if author exists, author.name is the authors name
  def author_name
    author.name if author
  end
end