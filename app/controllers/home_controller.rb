class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      if current_user.admin?
        redirect_to root_path
      elsif current_user.professeur?
        redirect_to root_path
      elsif current_user.eleve?
        redirect_to root_path
      else
        redirect_to root_path
      end
    end
  end

end
