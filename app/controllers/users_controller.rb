class UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    if @user.type == "Owner"
      @owner = @user
      
    elsif @user.type == "Supplier"
      @supplier = @user
    else
      @user.type == "Shopkeeper"
      @shopkeeper = @user
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
