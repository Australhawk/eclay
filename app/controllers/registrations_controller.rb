class RegistrationsController < Devise::RegistrationsController

  def new
  	
    
	
  end

  def create
    flash[:info] = 'Imposible crear una cuenta'
    redirect_to root_path
  end

end
