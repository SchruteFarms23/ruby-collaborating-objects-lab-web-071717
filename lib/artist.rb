require 'pry'

class Artist
	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
	end

	def songs
		@songs
	end

	def save
		@@all << self
	end

	def self.all
		@@all
	end

	def print_songs
		@songs.each do |song|
		puts song.name
	end
	end

	def self.find_or_create_by_name(names)
		 has_artist  = self.all.find {|el| el.name == names}
		 	if has_artist == nil
		new_artist = self.new(names)
			new_artist.save
			new_artist
	 else
	 	has_artist
	 	
	end
	end
	


end