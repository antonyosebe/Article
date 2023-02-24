require_relative "./article.rb"
require_relative "./author.rb"
class Magazine
    attr_accessor :name, :category
  
    @@all_magazine = []
    def initialize(name, category)
      @name = name
      @category = category
      @@all_magazine.push(self)
  
    end
    def self.total_magazine
      @@all_magazine
    end
    def contributors
      contributor = Article.total_article.select {|item|item.magazine.name == name}contributor.map {|item|item.author}.uniq
    end
    def self.find_by_name(name)
      @@all_magazine.select{|item|item.name==name}.first
    end
    def my_article
      titles = Article.total_article.select{|item|item.magazine.name ==name}titles.map{|item|item.title}
    end
    def article_titles
      my_article.map do |article| article.title end
    end
    def contributing_authors
      articles = Article.total_article.select {|item|item.magazine.name == name}
        contributors = articles.map{|article|article.author }.tally
        contributors.select{|k,v|  v > 2}.keys
      end
    end
  end