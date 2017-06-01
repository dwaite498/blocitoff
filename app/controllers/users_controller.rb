class UsersController < ApplicationController
  before_filter :authenticate_user!
  after_action 
  def show
    @user = User.find(params[:id])
  end
end
