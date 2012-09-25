class PantLeg

 	def initialize(wind_dir, travel_dir, temp)
 		@wind_direction = wind_dir.upcase
 		@travel_direction = travel_dir.upcase
 		@temperature = temp.to_i
 	end

  def roll_up?
    return false if @temperature <= 50

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

#goal: riding.roll_up? must be true, otherwise fail
if __FILE__ == $0
  require 'minitest/autorun'

  describe PantLeg do
    describe "#roll_up?" do
      
      describe "when temperature above 50" do
        let(:temperature) { 51 }
        describe "when initialized w/good values" do
          
          it "returns true" do
            pant_leg = PantLeg.new "W", "N", temperature
            pant_leg.roll_up?.must_equal true
          end
        end

        describe "when initialized w/bad values" do
          
          it "returns false" do
            pant_leg = PantLeg.new "N", "N", temperature
            pant_leg.roll_up?.must_equal false
          end
        end
      end

      describe "when temperature is 50" do
        describe "when initialized w/bad values" do

          it "returns false" do
            pant_leg = PantLeg.new "N", "N", 50
            pant_leg.roll_up?.must_equal false
          end
        end
      end

      describe "when temperature is less than 50" do
        describe "when initialized w/bad values" do

          it "returns false" do
            pant_leg = PantLeg.new "N", "N", 49
            pant_leg.roll_up?.must_equal false
          end
        end
      end

    end
  end

end