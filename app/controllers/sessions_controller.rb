class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      render status: :ok
    else
      render status: :forbidden
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
