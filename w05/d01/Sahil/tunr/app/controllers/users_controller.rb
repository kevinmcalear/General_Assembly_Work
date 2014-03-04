class UsersController < ApplicationController
  def new
    render :new
  end
  def create
    User.create({
      first_name: params[:first_name],
      last_name: params[:last_name],
      date_of_birth: params[:date_of_birth],
      sex: params[:sex],
      email: params[:email],
      facebook_link: params[:facebook_link],
      password: params[:password]
      })
    redirect_to("/")
  end
  def edit
    render :edit
  end
  def update ()

  end
  def show
    render :show
  end
end