RSpec.describe Car::MyCar do
    it "Creates instance of my car" do
        volvo = Car::MyCar.new(2020, "blue", "volvo")
        expect(volvo).to be_instance_of(Car::MyCar)
    end

    it "has starting speed defind to  0" do
            volvo = Car::MyCar.new(2020, "blue", "volvo")
            expect(volvo.current_speed).to eq(0) 
    end

end