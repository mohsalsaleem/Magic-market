class HomepageController < ApplicationController
	def home
		@books = Book.find_by featured: 'true'
	end
end
