class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

private

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Favor de iniciar sesión."
      redirect_to login_url
    end
  end

end
