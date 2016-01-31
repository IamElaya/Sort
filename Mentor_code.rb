class LighthouseTeamScraper
  TEAM_URL = "http://lighthouselabs.ca/team"

  #Visit the team url
  #Returns - Array of Hashes with mentor info.

  def self.get_info
    doc = Nokogiri::HTMLopen(TEAM_URL)
    mentor_names = doc.css(#mentors h4)
    binding.pry
  end
end