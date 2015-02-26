class ConcertsController < ApplicationController
before_action :authenticate_user!, only: :purchase 


	def accept
	  	@request= Request.find(params[:id])
	  	@request.status = "accepted"
	  	@concert = Concert.new(@request.to_concert_hash)
		if @concert.save
  		   redirect_to(show_share_path(concert.id))
  		else
			render("user_functions")
        end
    end

	def new_concert
		@concert = Concert.find(params[:id])
	end

	def purchase
		@concert = Concert.find(params[:id])
		@concert.tickets_required -= 1
		if @concert.save
			flash[:alert] = "Ticket purchased"
			redirect_to(show_share_path)
		else
			flash[:alert] = "We couldn't process your order, try again later."
			redirect_to(show_share_path)
		end
	end
end



