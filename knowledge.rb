class Module
	def attribute(name)
		define_method("#{name}=") { |value|	instance_variable_set("@#{name}", value) }
		define_method(name) { instance_variable_get("@#{name}") }
		define_method("#{name}?") { instance_variable_get("@#{name}") ? true :	false } 
	end
end

c = Class.new do 
end

o = Object.new

class << o
  attribute 'a'
end

puts not(o.a?)
puts o.a = 42
puts o.a == 42
puts o.a?
