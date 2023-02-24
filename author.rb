require_relative "./article.rb"
require_relative "./magazine.rb"
class Author
    attr_reader :name
    def initialize(name)
        @name=name
    end
    def articles
      article = Article.total_article.select {|item|item.author.name == name}
    end 
    def magazines
      author_article = Article.total_article.select {|item|item.author.name == name }
      author_article.map{|item|item.magazine}.uniq
    end
    def add_article(magazine, title)
        Article.new(self, magazine, title)
    end
    def topic_areas
      Magazine.map {|magazine| magazine.category}
    end
end
