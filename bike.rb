class Bike
	attr_accessor :brand, :type, :price
	def initialize
		puts "New Bike!"
	end
	@type = "Generic"
end

class KHS < Bike
	attr_accessor :type, :year, :store, :mileage
	def initialize
		puts "New KHS Bike!"
	end
	def add_miles(new_miles)
		@mileage = @mileage.to_i + new_miles.to_i
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
bike2.mileage = "1200"

puts "My #{bike2.brand} is a #{bike2.type} made in #{bike2.year} at #{bike2.store}, and its mileage is #{bike2.mileage}. "
more_mileage = 150
bike2.add_miles(more_mileage)
puts "After #{more_mileage} miles, its mileage is #{bike2.mileage}."