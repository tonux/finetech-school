class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      if current_user.admin?
        redirect_to rails_admin_path
      elsif current_user.professeur?
        redirect_to professeur_index_path
      elsif current_user.eleve?
        redirect_to eleve_index_path
      end
    end
  end

end
