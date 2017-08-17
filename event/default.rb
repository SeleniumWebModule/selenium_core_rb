require_relative '../model/findby'

class Default 
	def findAttribute(attributes, key)
		for attribute in attributes
			 return attribute if attribute.id == key
		end
	end

	def identifyAttrByGetValueBy(attributes)
		for attribute in attributes
			next if attribute.id != "getValueBy"
			return attribute
		end
	end
end