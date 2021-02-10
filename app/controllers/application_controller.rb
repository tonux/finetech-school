class ApplicationController < ActionController::Base
before_action :authenticate_user!
  private 
    # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def only_admin!
    unless current_user.admin?
      flash[:error] = 'Seul un admin peut accéder à cette ressource'
      redirect_back(fallback_location: root_path)
    end
  end

  def only_professeur!
    unless current_user.professeur?
      flash[:error] = 'Seul un professeur peut accéder à cette ressource'
      redirect_back(fallback_location: root_path)
    end
  end

  def only_eleve!
    unless current_user.eleve?
      flash[:error] = 'Seul un eleve peut accéder à cette ressource'
      redirect_back(fallback_location: root_path)
    end
  end
end