RSpec.describe Car::MyCar do
    it "creates instance of MyCar class" do
      volvo = Car::MyCar.new('volvo', '2019', 'yellow')
      expect(volvo).to be_instance_of(Car::MyCar) 
    end

    it "has starting speed of 0" do
        volvo = Car::MyCar.new('volvo', '2019', 'yellow')
        expect(volvo.current_speed).to eq(0) 
    end

    it "can speed up" do
        opel = Car::MyCar.new('astra', '2006', 'silver')
        opel.speed_up(100)
        expect(opel.current_speed).to be_within(99).of(101)
    end

    it "can speed up even more" do
      opel = Car::MyCar.new('astra', '2006', 'silver')
      opel.speed_up(150)
      expect(opel.current_speed).to be > 100
    end
end
