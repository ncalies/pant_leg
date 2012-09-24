class PantLeg

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
#goal: riding.roll_up? must be true, otherwise fail
if __FILE__ == $0
  require 'minitest/autorun'

  describe PantLeg do
    describe "#roll_up?" do
    
      describe "when initialized w/good values" do
        let(:pantleg) { PantLeg.new "W", "N", 65 }

        it "returns true" do
          pantleg.roll_up?.must_equal true
        end
      end

      describe "when initialized w/bad values" do
        let(:pantleg) { PantLeg.new "N", "N", 30 }

        it "returns false" do
          pantleg.roll_up?.must_equal false
        end
      end

    end
  end

  # riding = PantLeg.new "W", "N", 65
  # puts "Should I roll up my pant leg? #{riding.roll_up?}"
  # riding = PantLeg.new "N", "N", 65
  # puts "Should I roll up my pant leg? #{riding.roll_up?}"
  # riding = PantLeg.new "E", "N", 49
  # puts "Should I roll up my pant leg? #{riding.roll_up?}"
end
