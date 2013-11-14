# class Pet
# 	@count =0
# 	def speak
# 		Kernel.puts "Woof Woof"
# 	end

# 	def bark(volume)
# 		@vol = volume
# 		@count +=1
# 		Kernel.puts "fifi bark #{@vol} #{@count}"
# 	end

# 	def set_color(color)
# 		puts "fifi is #{color}"
# 	end
# end

# class Pop
# 	def poop
# 		puts "banana"
# 	end
# end
# # class.rb
# class Marker
#   def set_color(my_color)
#     @color = my_color
#   end

#   def write
#     Kernel.puts("I am writing with a #{@color} marker!")
#   end
# end
class Car
	def initialize
		@position = 0.0
		@gas = 10.0
	end
	def drive(miles, mpg)
		if (@gas - miles/mpg <0)
			puts "Denied you dont have enough gas to go that far, maybe you should fill_up"
			return
		end
		@position +=miles
		@gas -= miles/mpg #make sure >0
		puts "We have driven #{@position} miles."
		3
	end
	def fill_up
		amt= 10.0-@gas
		@gas =10.0
		puts "Now we are full, having added #{amt}"
		puts "Gas cost $3.04 per gallon.  We spend "+ (3.04*amt).to_s
	end
end
