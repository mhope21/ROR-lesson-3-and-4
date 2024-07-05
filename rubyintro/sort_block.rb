class Book
    attr_reader :author, :title, :count
  
    def initialize(author, title, count)
      @author = author
      @title = title
      @count = count
    end
  
    def to_s
      "author: #{author} title: #{title} count: #{count}"
    end
  end
  
  book_array = []
  book_array << Book.new("Beatrice Potter", "Peter Rabbit", 25)
  book_array << Book.new("Henry Fielding", "Tom Jones", 12)
  book_array << Book.new("Bob Woodward", "All the President's Men", 30)
  
  puts "Sorting alphabetically by author"
  # method to display title first
  def title_to_s(array)
    array.map {|book| "title: #{book.title} author: #{book.author} count: #{book.count}"}
  end 
  # method to display count first
  def count_to_s(array)
    array.map {|book| "count: #{book.count} author: #{book.author} title: #{book.title}"}
  end 

  
  new_array = book_array.sort do |a, b|
    author1 = a.author.downcase
    author2 = b.author.downcase
  
    author1 <=> author2
    # if author1 > author2
    #   1
    # elsif author1 < author2
    #   -1
    # else
    #   0
    # end
  end
  puts new_array
  # sort books by title
  title_array = book_array.sort do |a, b|
    title1 = a.title.downcase
    title2 = b.title.downcase

    title1 <=> title2
  end
  puts "Sorting alphabetically by title"
#   puts title_array 
  puts title_to_s(title_array)
  # sort books by count
  count_array = book_array.sort do |a, b|
    count1 = a.count
    count2 = b.count

    count1 <=> count2
  end
  puts "Sorting numerically by count"
#   puts count_array 
  puts count_to_s(count_array) 