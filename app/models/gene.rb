class Gene < ActiveRecord::Base
	has_many :diseases

	# def self.search(search)
	# 	search_condition = "%" + search + "%"
 	#  		find(:all, :conditions => ['name LIKE ? OR variance LIKE ?', search_condition, search_condition])
	# end

	def self.search(query)
	    # where(:title, query) -> This would return an exact match of the query
	    where("name like ?", "%#{query}%") 
 	end

end
