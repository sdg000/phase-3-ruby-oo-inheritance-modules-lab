require 'pry'
# require_relative './concerns/memorable'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable 
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  #when new song is created, store in @@songs
  # replaced by INITIALIZE MODULE


  # #find specific songs by name, by iterating through @@songs
  # replaced by FINDABLE MODULE

  #return all songs
  def self.all
    @@songs
  end

  #delete all songs (Class Method)
  #............REPLACED BY RESET_ALL MODULE.........


  # #count number of songs (Class Method)
  #............REPLACED BY COUNT MODULE.........

  #set artist of a song
  def artist=(artist)
    @artist = artist
  end

 #takes SONG name, converts string to lower case, replace space with "-"
 # REPLACED BY PARAMABLE MODULE

end




# require 'pry'
# # require_relative './concerns/memorable'

# class Song

#   extend Memorable
#   extend Findable 
#   include Paramable

#   attr_accessor :name
#   attr_reader :artist

#   @@songs = []

#   #when new song is created, store in @@songs
#   def initialize
#     @@songs << self
#   end

#   # #find specific songs by name, by iterating through @@songs
#   # def self.find_by_name(name)
#   #   @@songs.detect{|a| a.name == name}
#   # end

#   #return all songs
#   def self.all
#     @@songs
#   end

#   #delete all songs (Class Method)
#   #............REPLACED BY RESET_ALL MODULE.........
#   # def self.reset_all
#   #   self.all.clear
#   # end

#   # #count number of songs (Class Method)
#   #............REPLACED BY COUNT MODULE.........
#   # def self.count
#   #   self.all.count
#   # end

#   #set artist of a song
#   def artist=(artist)
#     @artist = artist
#   end

#   #takes artiste name, converts string to lower case, replace space with "-"
#   # def to_param
#   #   name.downcase.gsub(' ', '-')
#   # end
# end
