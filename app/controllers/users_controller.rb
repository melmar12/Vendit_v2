class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    # @user = User.new(user_params)
  end

  def update
    if user_params[:password].blank?
      params = user_params_without_password
    else
      params = user_params
    end

    respond_to do |format|
      if @user.update(params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :password, :admin)
    end

    def user_params_without_password
      params.require(:user).permit(:email, :username, :first_name, :last_name, :admin, :locked)
    end
end
