class Api::UsersController < ApplicationController

  def index
    @users = User.all
  end


  def create
    @user = User.new(user_params)


    if @user.save
      login(@user)
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  # local
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
 

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password, :font_size, :highlight_color, :theme)
    end
end
