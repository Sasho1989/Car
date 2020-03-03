RSpec.describe Car::MyCar do
    it "creates instance of MyCar class" do
      volvo = Car::MyCar.new('volvo','2019','yellow')
      expect(volvo).to be_instance_of(Car::MyCar) 
    end

    it "has starting speed of 0" do
        volvo = Car::MyCar.new('volvo','2019','yellow')
        expect(volvo.current_speed).to eq(0) 
    end
end  