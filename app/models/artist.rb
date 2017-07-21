class Artist < ApplicationRecord
	has_many :arts
	before_destroy :artist_destroy

	def artist_destroy
		self.arts.destroy_all
	end
end
