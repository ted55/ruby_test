class Gear
	attr_reader :chainring, :cog, :wheel
	def initialize(chainring, cog, wheel=nil)
		@chainring = chainring
		@cog = cog
		# @rim = rim
		@wheel = wheel
	end
	def ratio
		chainring / cog.to_f # float型へのキャスト
	end
	def gear_inches
		ratio * wheel.diameter
	end
end

class Wheel
	attr_reader :rim, :tire
	def initialize(rim,tire)
		@rim = rim
		@tire = tire
	end
	def diameter
		rim + (tire * 2)
	end
	def circumstance
		diameter * Math::PI
	end
end

wheel = Wheel.new(34, 20)
puts Gear.new(23, 10, wheel).gear_inches


puts Gear.new(52, 11, 26, 1.5).ratio
puts Gear.new(30, 22, 24, 1.25).ratio

puts Gear.new(52, 11).ratio
puts Gear.new(30, 22).ratio	