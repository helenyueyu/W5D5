class UsersController < ApplicationController
  def new 
    @user = User.new 
    render :new 
  end

  def index
    @users = User.all 
    render :index  
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login!(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end


  def edit 
    # debugger
    @users = User.find(params[:id])
    render :edit 
  end

  private 
  def user_params 
    params.require(:user).permit(:username, :password)
  end
end
