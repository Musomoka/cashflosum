class CashflowsController < ApplicationController
	def create
	 	@cashflow = current_user.books.build(filtered_params)
	 if @book.save
	   redirect_to action: 'index'
	 else
	   render 'new'
	 end
	end
end
