class UsersController < ApplicationController
  before_action :authenticate_user

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    ) 
    if user.save
      render json: { message: "User successfully created" }, status: :created
    else
      render json: { errors: user.error.full_messages }, status: :bad_request
    end 
  end

  def index
    users = User.all
    render json: users
  end  


  def show
    user = current_user
    render json: user
  end 





end
