class GenesController < ApplicationController

	def index
		if params[:search]
		    @genes = Gene.search(params[:search]).order("created_at DESC")
		    @diseases = Disease.all
		else
			@diseases = Disease.all
			@genes = Gene.all
		end
	end

	def show
	    @genes = Gene.all
	    @diseases = Disease.all
	end

end