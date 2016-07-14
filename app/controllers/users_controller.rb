class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @projects = @user.projects
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to projects_url, notice: "Signed up!"
    else
      render "new"
    end
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

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, project_attributes: [:name, :description, :goal, :date, :url, :user_id])
  end
end
