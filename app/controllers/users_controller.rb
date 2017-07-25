class UsersController < ApplicationController
  def index
  	@users = User.all
  	unless user_signed_in? && current_user.admin?
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end
  def edit
    unless user_signed_in? && current_user.admin?
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
  end
  def destroy
  	unless user_signed_in? && current_user.admin?
      flash[:notice] = "You don't have access to that page!"
      redirect_to root_path
      return
    end
    if @artist.destroy
      flash[:notice] = 'Artist was successfully destroyed.'
       respond_to do |format|
      format.html
      format.js
      format.json { head :no_content }
    end
  end

end 
