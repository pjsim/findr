class Photo < ActiveRecord::Base
	validates :farm, :server, :photo_id, :secret, presence: true
end
