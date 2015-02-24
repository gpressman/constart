class RequestsController < ApplicationController

	def new
	request = Request.new
	end

	def request_concert
	@request_info = params.permit(:venue_id, :artist, :city, :date)
	@request = Request.new(@request_info)
	@request.user_id = current_user.id
  	
  	if !@request.save
  		render ('request_form')
  	else
  		redirect_to(user_page_path)
  	end
  	
  	# @request= request_concert.select(:artist, :city, :date)
  	# render(json: request)


  end

   def venue_page
    @request_info = params.permit(:venue_id, :artist, :date, :ticket_price, :tickets_required, :date_campaign_ends)
	@request = Request.new(@request_info)
   end

end
