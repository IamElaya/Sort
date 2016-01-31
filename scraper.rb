require_relative 'scraper_module.rb'


class Post
include Scraper


  def initialize(title, url, points, item_id)
    @title = title
    @url = url
    @points = points
    @item_id = item_id
    end

    def comments

    end

    def add_comment(Comment)
    end
comments
end


