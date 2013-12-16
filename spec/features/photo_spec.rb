require 'spec_helper'

feature 'Photo Search' do
	scenario 'Search keyword "France" using navbar from home page' do
		visit root_path
		fill_in 'q', with: 'France'
		click_button 'Search'
		expect(page).to have_content 'Results for France'
		expect(page).to_not have_content 'No Results..'
		expect(page).to have_selector('img', count:46)
	end

	scenario 'Search with no keyword using navbar from home page' do
		visit root_path
		fill_in 'q', with: ''
		click_button 'Search'
		expect(page).to have_content 'No Results..'
		expect(page).to have_selector('img', count:1) #should always have logo image
	end

end

feature 'Click on search thumbnail for larger image' do
	scenario 'When a thumbnail image is clicked go to the show page of that photo' do
		visit root_path
		fill_in 'q', with: 'Snow'
		click_button 'Search'
		page.all('a')[1].click
		expect(page).to have_selector('img', count:2)
	end
end
