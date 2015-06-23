class AdminController < ApplicationController
  def index
    if current_user.try(:admin?)
      render('index')
    else
      redirect_to root_path
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attribute :admin, true
    redirect_to admin_index_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.update_attribute :admin, false
    redirect_to admin_index_path
  end
end
