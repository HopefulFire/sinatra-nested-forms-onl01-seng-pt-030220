class Ship

	@@all = []

	attr_accessor :name, :type, :booty

	def initialize(attributes)
		attributes.each do |k, v|
			self.send("#{k}=", v)
		end
		@@all << self
	end

	def self.all
		@@all
	end

	def self.clear
		@@all.clear
	end
	
end