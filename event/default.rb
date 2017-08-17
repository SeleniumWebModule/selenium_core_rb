require_relative '../model/findby'

class Default 
	def findAttribute(attributes, key)
		for attribute in attributes
			 return attribute if attribute.id == key
		end
	end
end