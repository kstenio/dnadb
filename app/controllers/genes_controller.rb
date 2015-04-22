class GenesController < ApplicationController
	before_action :set_gene, only: [:show, :edit, :update, :destroy]
	before_action :set_disease, only: [:show]

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
	end

	def new
		@gene = Gene.new
	end

	def edit
		@genes = Gene.all
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

	def update
	    respond_to do |format|
	      if @gene.update(gene_params)
	        format.html { redirect_to @gene, notice: 'gene was successfully updated.' }
	        format.json { render :show, status: :ok, location: @gene }
	      else
	        format.html { render :edit }
	        format.json { render json: @gene.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def destroy
	    @gene.destroy
	    respond_to do |format|
	      format.html { redirect_to genes_url, notice: 'gene was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

private
	
	def set_gene
      @gene = Gene.find(params[:id])
    end

    def set_disease
    	@diseases = Disease.find_all_by_id(params[:id])
    end

   def gene_params
      params.require(:gene).permit(:name, :variance, :info)
   end

end