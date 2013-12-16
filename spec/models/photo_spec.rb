require 'spec_helper'

describe Photo do
	it "is valid with a farm, server, photo_id and secret number" do
		photo = Photo.new(
			farm: '123',
			server: '123',
			photo_id: '123',
			secret: '123')
		expect(photo).to be_valid
	end
	it "is invalid without a farm number (as a string)" do
		expect(Photo.new(farm: nil)).to have(1).errors_on(:farm)
	end
	it "is invalid without a server number (as a string)" do
		expect(Photo.new(server: nil)).to have(1).errors_on(:server)
	end
	it "is invalid without a photo_id number (as a string)" do
		expect(Photo.new(photo_id: nil)).to have(1).errors_on(:photo_id)
	end
	it "is invalid without a secret number (as a string)" do
		expect(Photo.new(secret: nil)).to have(1).errors_on(:secret)
	end
end
