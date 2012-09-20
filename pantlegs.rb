class PantLegs

 	def initialize(wind_dir, travel_dir, temp)
 		@wind_direction = wind_dir.upcase
 		@travel_direction = travel_dir.upcase
 		@temperature = temp
 	end

  def roll_up?
    (traveling?("N") && blowing?("W")) || \
    (traveling?("E") && blowing?("N")) || \
    (traveling?("S") && blowing?("E")) || \
    (traveling?("W") && blowing?("S"))
  end

  def blowing?(direction)
    @wind_direction == direction
  end

  def traveling?(direction)
    @travel_direction == direction
  end

end

#using the puts below to test until I learn how to write a test
if __FILE__ == $0
  riding = PantLegs.new "W", "N", 65
  puts "Should I roll up my pant leg? #{riding.roll_up?}"
  riding = PantLegs.new "N", "N", 65
  puts "Should I roll up my pant leg? #{riding.roll_up?}"
  riding = PantLegs.new "E", "N", 49
  puts "Should I roll up my pant leg? #{riding.roll_up?}"
end
