class InicioController < ApplicationController
  def show
  	@works = Work.limit(3).order("created_at DESC")
  	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @works }
    end 
  end
end
