require_relative "./author.rb"
require_relative "./magazine.rb"
class Article
    attr_accessor :author, :magazine, :title
    @@all = []
    @@title = []
    def initialize(author, magazine, title)
        @@all << self
        @magazine = magazine
        @@title << title
        @author = author
        @title = title
    end
    def self.total_article
        @@all_article
     end  
end

