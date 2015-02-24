class PageController < ApplicationController
  def home
  end


  def user_page
  	 @user = current_user
  end

  def user_functions
  end


  def edit
  @user = current_user

  end

  def process_user_data
  	logger.info params['name']
  	logger.info params['phone']
  	logger.info params['address']
  	@user= current_user
  	if @user.update_attributes(params.permit(:name, :address, :phone_number))
  		redirect_to action: 'user_page', controller: 'page'
  	else
  		render "user_functions"
  	
	end
  end



  def request_concert
  	render text: "text"

  end


end

