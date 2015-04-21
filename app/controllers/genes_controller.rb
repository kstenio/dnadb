class GenesController < ApplicationController

	 def index
    @genes = Gene.all
    @diseases = Disease.all
    if @diseases
    	print "oi";
    end
  end

  def show
    @genes = Gene.all
    @diseases = Disease.all
    
  end


end
