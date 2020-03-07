RSpec.describe Car::MyCar do
    let(:volvo) { Car::MyCar.new(2020, "blue", "volvo") }
    let(:failure) { "water pomp , chnage oil, breaking problem" }
    it "creates instance of my car" do
        expect(volvo).to be_instance_of(Car::MyCar)
    end

    it "has starting speed defind to 0" do
        expect(volvo.current_speed).to eq(0)
    end

    it "limited speed in my country is 130kmh" do
        expect(volvo.current_speed).to be <= 130
    end

    it "speed up per 10 "do
        volvo.speed_up
        expect(volvo.current_speed).to eq(Car::MyCar::SPEED_OFFSET)
    end

    it "slowly driving with argument" do
      volvo.slow_down(30)
      expect(volvo.current_speed).to eq(-30)
    end

    it "slowly driving" do
      volvo.slow_down
      expect(volvo.current_speed).to eq(-Car::MyCar::SPEED_OFFSET)
    end

    it "changes the color of the car" do
      volvo.spray_paint :black
      expect(volvo.color).to eq(:black)
    end

    it "has empty" do
      expect(volvo.defects).to be_empty
    end

    it "method for adds defects" do
      volvo.add_defects(failure)
      expect(volvo.defects).to include(failure)
    end

    it "method for service raport" do
      volvo.add_defects(failure)
      expect(volvo.service_info).to eq("Defects to be fixed: #{failure}")
    end

    it "has many defects and i like to sell"do
      volvo.for_sale(2000)
      expect(volvo.price).to include(2000)
    end
end