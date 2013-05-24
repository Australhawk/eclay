class RegistrationsController < Devise::RegistrationsController

  def new
  	if admin_signed_in?
  	
  	else
    flash[:info] = 'Imposible crear una cuenta'
    redirect_to root_path
	end
  end

  def create
    flash[:info] = 'Imposible crear una cuenta'
    redirect_to root_path
  end

end
