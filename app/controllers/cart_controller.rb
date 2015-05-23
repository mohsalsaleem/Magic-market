class CartController < ApplicationController
  def show
	if current_user
		@cart_item = CartItem.all.where(user_id: current_user.id)
		@book_ids = []
		@cart_item.each do |ci|
			@book_ids.push(ci.book_id)
			puts @book_ids
			puts '-------'
		end
		@books = Book.find(@book_ids)
		@total = 0
		@books.each do |book|
			@total += book.mrp
		end
	else
		redirect_to new_user_session_path
	end
  end
  def add 
	book_id = params[:book_id]
	puts book_id
	user_id = params[:user_id]
	puts "----------"
	@cart_item = CartItem.new(book_id: book_id, user_id: user_id)
	if @cart_item.save
		puts "Saved"
	redirect_to(:back)
        end
  end
end
