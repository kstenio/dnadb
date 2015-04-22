class DiseasesController < ApplicationController

	before_action :set_disease, only: [:show, :edit, :update, :destroy]

	def edit
		@disease = Disease.all
	end

	def show
	end

	def new
		@disease = Disease.new
	end

	def create
    	@disease = Disease.new disease_params
    	if(params[:gene_id])
    		@disease.gene_id = params[:gene_id]
    	else
    		@disease.gene_id = :gene_id;
    	end
    	 respond_to do |format|
		    if @disease.save
		        format.html { redirect_to @disease, notice: 'disease foi criado com sucesso.' }
		        format.json { render :show, status: :created, location: @disease }
		    else
		        format.html { render :new }
		        format.json { render json: @disease.errors, status: :unprocessable_entity }
		    end
	    end
	end

	def destroy
	    @disease.destroy
	    redirect_to genes_path
	end

	private


   def disease_params
      params.require(:disease).permit(:name, :quantity ,:state, :gene_id)
   end

   def set_disease
      @disease = Disease.find(params[:id])
    end

end
