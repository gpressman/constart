class PageController < ApplicationController


  def home
  end

  def about
  end

  def update_profile
    @user = current_user
  end

  def user_functions
    @user= current_user
  end
  
  def edit
    @user = current_user
  end

  def process_user_data
  	logger.info params['name']
  	logger.info params['phone']
  	logger.info params['address']
  	@user= current_user
    flash[:notice] = "Info updated"
    if @user.update_attributes(params.permit(:name, :address, :phone_number))
  		redirect_to(user_functions_path)
  	else
  	  render "user_functions"
    end
  end

  def request_form
  	@venues= Venue.all
  end

  def survey
    @venues = Venue.all
  end

  def bands
    @bands= current_user.bands.all
  end
end

