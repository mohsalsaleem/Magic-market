class SearchController < ApplicationController
  def index
    Book.reindex
  end
  def search

	if params[:q].nil?
    		@books = []
  	else		
    		@books = Book.search params[:q]
  	end
  end
  def autocomplete
    puts "in auto complete"
    render json: Book.search(params[:query], autocomplete: false, limit: 10).map do |book|
      { title: book.name, value: book.id }
    end
    puts "books"
  end
  
end
