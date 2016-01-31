require 'rubygems'
require 'pry'
require 'nokogiri'

puts "yigiyg"

# class Scraper

  PAGE_URL = 'post.html'

  #Visit the team url

  # Returns - Array of Hashes with mentor info.


  def self.get_info
    @doc = Nokogiri::HTML(File.open(PAGE_URL))
    @title = doc.css('title').map{|element| element.inner_text}
    @url = doc.css('.title > a').map{|element| element['href']}
    @points = doc.css('.score').map{|element| element.inner_text}
    @id = doc.css('.votelinks a').map{|element| element['href'].scan(/10886306/)}
    @name = doc.css('.comhead > a').map{|element|element.inner_text}
    @time = doc.css('.age > a').map{|element| element.inner_text}
    @content = doc.css('.c00').map{|element| element.inner_text}
    end
  end

  def self.title
    doc = Nokogiri::HTML(File.open(PAGE_URL))
    title = doc.css('title').map{|element| element.inner_text}
  end

  def self.get_url
    doc = Nokogiri::HTML(File.open(PAGE_URL))
    url = doc.css('.title > a').map {|element| element['href']}
  end

  def self.get_points
    doc = Nokogiri::HTML(File.open(PAGE_URL))
    points = doc.css('.score').map {|element| element.inner_text}
  end

  def self.get_item_id
    doc = Nokogiri::HTML(File.open(PAGE_URL))
    item_id = doc.css('.votelinks a').map {|element| element['href'].scan(/10886306/)}
    return item_id[1]
  end

  def self.get_name
     doc = Nokogiri::HTML(File.open(PAGE_URL))
    name = doc.css('.comhead > a').map {|element| element.inner_text}
  end

  def self.get_time_ago
    doc = Nokogiri::HTML(File.open(PAGE_URL))
    time = doc.css('.age > a').map {|element| element.inner_text}
  end

  def self.get_content
    doc = Nokogiri::HTML(File.open(PAGE_URL))
    content = doc.css('.c00').map {|element| element.inner_text}
  end
# end
  #  def self.get_link
  #        doc = Nokogiri::HTML(File.open(PAGE_URL))
  #       doc.css('.comment > .c00 > p').map do |element|
  #         element['href']
  #     end
  #   end

comment = get_name.zip((get_time_ago), (get_content)) {|x, y, z| p [x, y, z]}
p comment

p "hihihi"
p get_name

# class WTF

#     @hash = {}
 

#    PAGE_URL = 'post.html'

#    def self.get_name
#     get_content_hash = {}
#      doc = Nokogiri::HTML(File.open(PAGE_URL))
#     doc.css('.comhead > a').map do |element|
#      element.inner
#     end
#   end

#   def entries
#     @hash
#   end

#   def keywords
#     @hash.keys
#   end

# end



 # puts get_info
# end




