class ConcertsController < ApplicationController
include ApplicationHelper
before_action :authenticate_user!, only: :purchase 


	def accept
	  	@request= Request.find(params[:id])
	  	@concert = Concert.new(@request.to_concert_hash)
		@concert.status = "in_progress"
		if @concert.save
		  	@request.status = "accepted"	
		  	@request.concert_id = @concert.id
			@request.save
			redirect_to(show_share_path(@concert.id))
  		else
			render("user_functions")
        end
    end

	def new_concert
		@concert = Concert.find(params[:id])
		@artist = artist_getinfo(@concert.artist)
	end

	def purchase
		@concert = Concert.find(params[:id])
		@concert.tickets_required -= 1
  		@user= current_user
   		unless @concert.users.include?(@user)
     		@concert.users.push(@user)
     	end
		if @concert.save
			ConcertMailer.purchase_email(@concert, @user).deliver_now
			flash[:alert] = "Ticket purchased"
			if @concert.tickets_required < 1 
			   @concert.status = "funded"
			   @concert.save
				ConcertMailer.concert_funded(@concert).deliver_now
			end
			redirect_to(show_share_path)

		else
			flash[:alert] = "We couldn't process your order, try again later."
			redirect_to(show_share_path)
		end
	end

	def email_users
		@concert = Concert.find(params[:id])
	end

	def mass_email
		@concert = Concert.find(params[:id])
		if ConcertMailer.mass_email(@concert, params[:email_users]).deliver_now
			flash[:alert] = "Email sent"
			redirect_to(user_functions_path)
		else
			render("user_functions")
		end
	end

	def random
		@random_concert =Concert.sample(3)
	end
end



 
  