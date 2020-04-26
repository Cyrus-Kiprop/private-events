class UsersController < ApplicationController
  before_action :authorize, except: %i[new create]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_confirmation, :password)
  end
end
