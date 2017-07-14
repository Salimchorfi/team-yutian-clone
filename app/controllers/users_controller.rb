 class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @jams = Jam.where(user_id: @user.id)
    @users_orders = Trade.where(user: @user)
    @trade = Trade.new(user: @user, jam: @jam)
    # @user = current_user
  end

  # def edit
  #   @user = User.find(user_params[:id])
  #   authorize current_user
  # end

  def destroy
    @user = User.find(user_params[:id])
    @user.destroy
  end

  def update
    @user = User.find(params[:id])

    @user.update_attributes(user_params)
    redirect_to user_show_path(current_user.id)  # users_path
  end


  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to user_path(@user)
      else
        render :new
    end
  end

  def profile

  end

  private

  def user_params
    params.require(:user).permit(
      :encrypted_password,
      :location, :email,
      :photo,
      :photo_cache,
      :first_name,
      :last_name
      )
  end

end
