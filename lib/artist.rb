require 'pry'
# require_relative "./concerns/memorable"

class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable


  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super  #refer to code from Memorable::InstanceMethods
    @songs = []
  end


  #return all artiste in Class Variable (artiste)
  def self.all
    @@artists
  end


  #create new song, store in @songs, set artiste of song to Self (Instance that called this method)
  def add_song(song)
    @songs << song
    song.artist = self
  end

  #create or add multiple songs at once, iterate through list of songs, pass each song to {add_song module} to be added to songs
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

   #takes artiste name, converts string to lower case, replace space with "-"
   # REPLACED BY PARAMABLE MODULE

end




# require 'pry'
# # require_relative "./concerns/memorable"

# class Artist

#   extend Memorable
#   extend Findable
#   include Paramable


#   attr_accessor :name
#   attr_reader :songs

#   @@artists = []

#   def initialize
#     @@artists << self
#     @songs = []
#   end

#   #iterate through Class Variable (artiste) and find specific artiste
#   #............REPLACED BY FINDABLE MODULE.........
#   # def self.find_by_name(name)
#   #   @@artists.detect{|a| a.name == name}
#   # end

#   #return all artiste in Class Variable (artiste)
#   def self.all
#     @@artists
#   end

#   #remove all Instances of Artist (Class Method)
#   #............REPLACED BY RESET_ALL MODULE.........
#   # def self.reset_all
#   #   self.all.clear
#   # end

#   # #count all Instances of Artist (Class Method)
#   #............REPLACED BY COUNT MODULE.........
#   # def self.count
#   #   self.all.count
#   # end

#   #create new song, store in @songs, set artiste of song to Self (Instance that called this method)
#   def add_song(song)
#     @songs << song
#     song.artist = self
#   end

#   #create or add multiple songs at once, iterate through list of songs, pass each song to {add_song module} to be added to songs
#   def add_songs(songs)
#     songs.each { |song| add_song(song) }
#   end

#   # #takes artiste name, converts string to lower case, replace space with "-"
#   # def to_param
#   #   name.downcase.gsub(' ', '-')
#   # end
# end

