class UsersController < ApplicationController
  
  def index
    @users = user.all
    render(:index)
  end

  def show
    @user = User.find(params[:id])
    render(:show)
  end

  def create
    @user = User.create(
      first_name: params[:first_name], 
      last_name: params[:last_name],
      date_of_birth: params[:date_of_birth], 
      sex: params[:sex],
      email: params[:email], 
      facebook_link: params[:facebook_link],
      password: params[:password]
      )
    redirect_to("/users/#{@user.id}")
  end 

  def new
    render(:new)
  end

  def edit
    @user = User.find(params[:id])
    render(:edit)
  end

  def update
    @user = User.find(params[:id])
    @user.update(
      first_name: params[:first_name], 
      last_name: params[:last_name],
      date_of_birth: params[:date_of_birth], 
      sex: params[:sex],
      email: params[:email], 
      facebook_link: params[:facebook_link],
      password: params[:password]
      )
    redirect_to("/users/#{@user.id}")
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to("/")
  end
end