class HomeController < ApplicationController
  def index
  end

  def search
  	require 'flickraw'

	FlickRaw.api_key="58adb35fdd6129698f48494ac34da27a"
	FlickRaw.shared_secret="0e79ac0938e47f30"

	if params[:q] != ""
		args = {}
		args[:tags] = params[:q]
		new_photos = flickr.photos.search args
		Photo.delete_all
		new_photos.each do |photo|
			@photo = Photo.new(
				farm:"#{photo.farm}",
				server:"#{photo.server}",
				photo_id:"#{photo.id}",
				secret:"#{photo.secret}"
			)
			@photo.save
		end
	else
		Photo.delete_all
	end
  end
end
