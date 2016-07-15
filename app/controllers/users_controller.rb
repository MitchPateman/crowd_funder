class UsersController < ApplicationController
  before_action :find_user, only:[:show, :edit, :update]

  def new
    @user = User.new
  end

  def show
    @projects = @user.projects
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to projects_url, notice: "Successfully signed up and logged in!"
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, project_attributes: [:name, :description, :goal, :date, :url, :user_id])
  end
end
