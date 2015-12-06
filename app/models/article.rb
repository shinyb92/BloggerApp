class Article < ActiveRecord::Base
	has_many :comments
	has_many :taggings 
	has_many :tags, through: :taggings
	
	def tag_list 
		tags.join(", ")
	end
	
	def tag_list=(tags_string)
		tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq 
	end 

end
