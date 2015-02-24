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
  end

  def request
  	 @request_info = params.permit(:venue_id, :artist, :date, :ticket_price, :tickets_required, :date_campaign_ends)
	 @request = Request.update_attributes(@request_info)
	 	if   @request.update_attributes
	 		 redirect_to action: 'venue_page', controller: venues
	 	else 
	 		render "venue_page"
	 	
	 	end

  end

   def venue_page
   
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