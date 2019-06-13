class ToppagesController < ApplicationController
  
  def index
    if logged_in?
    @tasks = current_user.tasks.order(id: :desc).page(params[:page]).per(3)
    end
  end
end
