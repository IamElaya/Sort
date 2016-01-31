Mentor
  @name
  @bio
  @photo_url

  #first_name
  #last_name

  LighthouseTeamscraper
    @@team_url # misleading...
    TEAM_URL = "http://lighthouselab.ca/team"
    ::get_info
      return [{mentor name, bio, photo_url}]

  TeamMaker
    ::print_all
      hash_mentors = LighthouseTeamscraper,
      get_info
      #convert mentor hash into Array of 
      Mentor Instances
      #iterate over mentor instances and display info

  Phil Jama
  Phil Jama has mastered...
  http://... <- photo url

  Actions:
  - get the information off of the website
  - display the information in the format above