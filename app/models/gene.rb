class Gene < ActiveRecord::Base
	has_many :diseases
	
	def self.search(query)
	    where("name like ?", "%#{query}%") 
 	end

end
