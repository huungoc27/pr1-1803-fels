class UsersController < ApplicationController

  def index
    @users = User.paginate page: params[:page], per_page:5
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find_by id: params[:id]
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Welcome to the E-Learing"
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes user_params
      flash[:success] = "Updated"
      redirect_to @user
    else
      render :edit
  end
end

  def following
    @title = "Following"
    @user  = User.find_by params[:id]
    @users = @user.following.paginate page: params[:page]
    render :show_follow
  end

  def followers
    @title = "Followers"
    @user  = User.find_by params[:id]
    @users = @user.followers.paginate page: params[:page]
    render :show_follow
  end

private
  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation
  end

  def correct_user
    user = User.find params[:id]
    redirect_to(root_url) unless current_user?(@user)
  end
end
