class UsersController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
end

def create
   @user = User.new(user_params)
   if @user.save
     redirect_to users_path
   else
     render :new
   end
end
