class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(user_params[:id])
  end

  def edit
    @user = User.find(user_params[:id])
  end

  def destroy
    @user = User.find(user_params[:id])
    @user.destroy
  end

  def update
    @user = User.find(user_params[:id])
    @user.update(user_params)
    redirect_to users_path
  end


  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to user_path(@user)
      else
        render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :encrypted_password, :location, :email, :photo, :photo_cache)
  end

end
