class Module
	def attribute(name)
		define_method("#{name}=") do |value| 
			name = value
		end
		define_method(name) do
			name
		end
	end
end