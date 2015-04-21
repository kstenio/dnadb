class GenesController < ApplicationController

	 def index
    @genes = Gene.all
    @diseases = Disease.all
  end

  def show
    @genes = Gene.all
    @diseases = Disease.all
    
  end


end
