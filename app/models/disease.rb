class Disease < ActiveRecord::Base
	belongs_to :gene

	def self.find_all_by_id(id)
		where(gene_id: id)
	end

end