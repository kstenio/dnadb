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
		@gene = Gene.find params[:id]
	end

	def new
		@gene = Gene.new
	end

	def create
    	@gene = Gene.new gene_params

	    respond_to do |format|
		    if @gene.save
		        format.html { redirect_to @gene, notice: 'gene foi criado com sucesso.' }
		        format.json { render :show, status: :created, location: @gene }
		    else
		        format.html { render :new }
		        format.json { render json: @gene.errors, status: :unprocessable_entity }
		    end
	    end
	end

private

   def gene_params
      params.require(:gene).permit(:name, :variance, :info)
   end

end