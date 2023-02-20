class Article
    attr_accessor :author, :magazine, :title
    def initialize(author, magazine, title)
        @magazine = magazine
        @@title << title
        @author = author
        @title = title
    end
end