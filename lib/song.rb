require 'pry'

class Song

	attr_accessor :artist, :name

	def initialize(name)
		@name = name
	end

	def self.new_by_filename(file_name)
		new_file_name = file_name.split(" - ")
		new_song =  Song.new(new_file_name[1])
		new_song.artist = Artist.find_or_create_by_name(new_file_name[0])
		new_song.artist.add_song(new_file_name[1])
		new_song

		
	end


end


# [1] pry(Song)> file_name
# => "Michael Jackson - Black or White - pop.mp3"