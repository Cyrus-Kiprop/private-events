class SessionsController < ApplicationController
  def new
    @user_credentials = Credentials.new('example@gmail.com', '')
  end

  def create
    keys = params[:user]
    email = keys[:email]
    user = User.find_by_email(email)

    if user&.authenticate(keys[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in'
    else
      flash.now[:alert] = "User doesn't exits on the database"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_sessions_path
  end
end

class Credentials
  attr_reader :email, :password

  def initialize(email, password)
    @email = email
    @password = password
  end
end
