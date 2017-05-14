class Blog

  @@count = 0

  @@posts = Array.new

end

class BlogPost < Blog

  def set_title= title
    @title = title
  end

  def get_title
    return @title
  end

  def set_content= content
    @content = content
  end

  def get_console
    return @content
  end

  def set_author= author
    @author = author
  end

  def get_author
    return @author
  end

  def current_date= date
    @date = date
  end

  def get_date
    return @date
  end

  def initialize

    puts "Title: "
    @title = gets
    @@posts << @title

    puts "Content: "
    @content = gets
    @@posts << @content

    puts "Author: "
    @author = gets
    @@posts << @author

    @date = Time.new
    puts "Date: #{@date}"
    @@posts << @date

    @@count += 1
    puts "Blog count: #{@@count.to_s}"

  end

  def publish
    puts @@posts
  end

end

post = BlogPost.new

puts "Do you want to create another blog post? [y/n]"
response = gets.to_s.chomp

while (response == "y")
  post = BlogPost.new
  puts "Do you want to create another blog post? [y/n]"
  response = gets.to_s.chomp
end

if response == "n"
   puts "Goodbye, thanks for stopping by"
end

post.publish
