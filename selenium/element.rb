class SeleniumElement
	def initialize(ref)
		@ref = ref
		@children = Array.new
	end

	def registerChild(child)
		@children << child
	end

	attr_accessor :children, :ref
end