class AdminController < ApplicationController
  before_action :admin
  def index
  end

  private

  def admin
    redirect_to home_index_path unless current_user.is_admin?
  end
end