class UsersController < ApplicationController
  before_filter :authenticate_user!
  after_action 
  def show
    @items = current_user.items
    @user = User.find(params[:id])
  end
end
