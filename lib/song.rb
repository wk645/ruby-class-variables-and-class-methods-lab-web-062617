class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

	def initialize(name, artist, genre)

		@name = name
		@artist = artist
		@genre = genre

		@@count += 1
		@@genres << @genre
		@@artists << @artist
	end

	def count
		@@count
	end

	def self.count
		@@count
	end

	def self.genre_count
		genre_hash = {}

		@@genres.each do |genre|
			if genre_hash.include?(genre)
				genre_hash[genre] += 1
			else
				genre_hash[genre] = 1
			end
		end
		genre_hash
	end

	def self.artist_count
		artist_hash = {}

		@@artists.each do |artist|
			if artist_hash.include?(artist)
				artist_hash[artist] += 1
			else
				artist_hash[artist] = 1
			end
		end
		artist_hash
	end

	def self.artists
		answer_array = []
		@@artists. each do |artist|
			unless answer_array.include?(artist)
				answer_array << artist
			end
		end
		answer_array
	end

	def self.genres
	answer_array = []
	@@genres. each do |genre|
		unless answer_array.include?(genre)
			answer_array << genre
		end
	end
	answer_array
end

end