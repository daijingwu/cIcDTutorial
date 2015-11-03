class Bike
	attr_accessor :brand, :type, :price
	def initialize
		puts "New Bike!"
	end
	@type = "Generic"
end

class KHS < Bike
	attr_accessor :type, :year, :store
	def initialize
		puts "New KHS Bike!"
	end
end

bike1 = Bike.new
bike1.brand = "KHS"
bike1.type = "folding bike"
bike1.price = 1000

puts "My #{bike1.brand} is a #{bike1.type} and it cost me #{bike1.price}"

bike2 = KHS.new
bike2.brand = "khs"
bike2.type = "city"
bike2.price = 2000
bike2.year = "2015"
bike2.store = "TPE"

puts "My #{bike2.brand} is a #{bike2.type} made in #{bike2.year} and"