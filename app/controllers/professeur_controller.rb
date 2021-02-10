class ProfesseurController < ApplicationController
  before_action :only_professeur!

  def index
  end
end
