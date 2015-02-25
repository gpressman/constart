class ConcertsController < ApplicationController
	def accept
	  	@request= Request.find(params[:id])
	  	@request.status = "accepted"
	  	@concert = Concert.new(@request.to_concert_hash)
	  		if @concert.save
	  		   redirect_to(user_page_path)
	  		else
				render("user_functions")
	        end
	    end
end



