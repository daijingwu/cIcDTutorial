
# Problem Statement: Given a sentence, return true if the sentence is a palindrome.
def palindrome?(sentence)
  # Write your code here
  original = sentence.upcase.gsub(" ", "")
  reverse = original.reverse
  if original == reverse
    return true
  else
    return false
  end
end

# Problem Statement: Let us say you are trying to recruit team-members for your new startup! 
#Given a candidate, you need an expression that will tell you whether they fit into certain types. This is how a candidate object would look:

is_an_experienced_ruby_programmer =
  (candidate.languages_worked_with.include? 'Ruby') &&
  (candidate.years_of_experience >= 2 || candidate.github_points >= 500) &&
  ! (candidate.age < 15 || candidate.applied_recently?)

#Problem Statement: Create a method 'random_select' which, when given an array of elements (array) and a number (n), 
# returns n randomly selected elements from that array.
def random_select(array, n)
  result = []
  n.times do 
    result << array[rand(array.length)]
  end
  result
end

### Problem Statement: Create a method named 'sort_string' which accepts a String and rearranges all the words in ascending order, by length. 
### Let's not treat the punctuation marks any different than other characters and assume that we will always have single space to separate the words.
def sort_string(string)
  string.split(' ').sort{|x, y| x.length <=> y.length}.join(' ')
end
###
module Perimeter
  def perimeter
    sides.inject(0) { |sum, side| sum + side }
  end
end

class Rectangle
  # Your code here
  include Perimeter
  
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  # Your code here
  include Perimeter
  
  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end



###
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