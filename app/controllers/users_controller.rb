class UsersController < ApplicationController
  before_filter :user_logged_in
  
  def index
    redirect_to(new_user_path)
  end

  def create
    @email = params[:email]
    @password = params[:pass]
    @user = User.find_by_email_and_password(@email, @password)
    if ! @user.nil?
      redirect_to user_path(@user)
      session[:user] = @user
      session[:useremail] = @user.email
    else
      render :action => "new"
    end
  end

  def new   
  
  end
  
  def show
  end
  
  def destroy
    session[:user] = @user = nil;
    redirect_to home_index_path
  end
  
  private
  def user_logged_in
    if ! session[:user].nil?
      @user = User.find(session[:user]) and return true
    end
  end
end
