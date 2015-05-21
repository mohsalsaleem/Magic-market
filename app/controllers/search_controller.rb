class SearchController < ApplicationController
  def search  
	if params[:q].nil?
    		@books = []
  	else		
    		@books = Book.search params[:q]
  	end
  end
  def autocomplete
    puts "in auto complete"
    render json: Book.search(params[:query], autocomplete: true, limit: 10).map do |book|
      { name: book.name, id: book._id }
    end
  end
end
