require_relative 'scraper_module'
# require_relative 'comment.rb'
require 'rubygems'
require 'nokogiri'
require 'pry'



class Post
   

    attr_reader :title, :url, :points, :item_id, :comments, :item_id, :comments, 

    def initialize(title, url, points, item_id)
        @title = title
        @url = url
        @points = points
        @item_id = item_id
    end

    def comments
        comment
    end

    def add_comment

end


