require 'pry'

class MP3Importer

	attr_accessor :artist, :song, :path

	def initialize(path)
		@path = path
		# @files << @path
	end

	def files
		@new_arr = Dir["#{@path}/*.mp3"]
		@new_arr.collect do |song|
			song.slice!("#{@path}/")
			song
		end
	end

	def import
		self.files.each do |song|
			Song.new_by_filename(song)
		end
	end
end

# @path = "./spec/fixtures/mp3s"

# [1] pry(#<MP3Importer>)> @new_arr
# => ["./spec/fixtures/mp3s/Action Bronson - Larry Csonka - indie.mp3",
#  "./spec/fixtures/mp3s/Real Estate - Green Aisles - country.mp3",
#  "./spec/fixtures/mp3s/Real Estate - It's Real - hip-hop.mp3",
#  "./spec/fixtures/mp3s/Thundercat - For Love I Come - dance.mp3"]