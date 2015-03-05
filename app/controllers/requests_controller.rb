class RequestsController < ApplicationController

	def new
	request = Request.new
	end

	def request_concert
	@request_info = params.permit(:venue_id, :artist, :city, :date, :description, :address)
	@request = Request.new(@request_info)
	@request.user_id = current_user.id
  @request.artist_getimage()
  @request.artist_getsong()
	@request.status = "sent"
  	flash[:notice] = "Concert Requested"
	  	if  @request.save
	  		redirect_to(user_functions_path)
	  	else
	  		render('request_form')
	  	end
  end

  def edit
  	@request= current_user.venue.requests.find(params[:id])
  end

  def accept
  	@request= current_user.venue.requests.find(params[:id])
  	@request.status = "accepted"
  	redirect_to(user_functions_path)
  end

  def decline
  	   @request= Request.find(params[:id])
  	   @request.status = "declined"
  	   flash[:alert] = "Concert declined"
  	   if @request.save
  	      redirect_to(user_functions_path)
  	  else
          render("user_functions")
  	   end
  end

  def update
	@request = current_user.venue.requests.find(params[:id])
	@request_info = params.require(:request).permit(:venue_id, :artist, :date, :time, :ticket_price, :tickets_required, :date_campaign_ends)
 	@request.status = "replied_to"
 	flash[:notice] = "Reply sent"
 	if  @request.update(@request_info)
		redirect_to(venue_page_path) 
 	else 
		render ("return_form")
	end

  end

   def venue_page
   
   end

   def refuse
   	   @request = Request.find(params[:id])
   	   @request.status = "refused"
   	   flash[:alert] = "Concert refused"
   	    if @request.save
   	   	   redirect_to(venue_page_path)
   	   	else
   	   		render("venue_page")
   	   	end
   end

end


	# def edit
	# 	@project = Project.find params[:project_id]
	# 	@entry = @project.entries.find(params[:id])
	# end

	# def update
	# 	@project=Project.find params[:project_id]
	# 	@entry= @project.entries.find(params[:id])
	# 		if @entry.update_attributes(entry_params)
	# 			redirect_to action: 'index', controller: 'entries', project_id: @project.id
	# 		else 
	# 			render "update"
	# 		end
	# end