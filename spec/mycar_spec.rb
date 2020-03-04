RSpec.describe Car::MyCar do
    it "Creates instance of my car" do
        volvo = Car::MyCar.new(2020, "blue", "volvo")
        expect(volvo).to be_instance_of(Car::MyCar)
    end

    it "Has starting speed defind to 0" do
        volvo = Car::MyCar.new(2020, "blue", "volvo")
        expect(volvo.current_speed).to eq(0) 
    end

    it "Limited speed in my country is 130kmh" do
        volvo = Car::MyCar.new(2020, "blue", "volvo")
        expect(volvo.speed_up).to be <= 130
    end
end