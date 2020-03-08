RSpec.describe Car::MyCar do
    let(:opel) { Car::MyCar.new('astra', '2006', 'silver') }

    let(:failure) {'water pump failure, oil leak'}

    it "creates instance of MyCar class" do
      expect(opel).to be_instance_of(Car::MyCar)
    end

    it "has starting speed of 0" do
      expect(opel.current_speed).to eq(0)
    end

    it "can speed up" do
      opel.speed_up(100)
      expect(opel.current_speed).to be_within(99).of(101)
    end

    it "can speed up even more" do
      opel.speed_up(150)
      expect(opel.current_speed).to be > 100
    end

    it "can speed up to default value" do
      opel.speed_up
      expect(opel.current_speed).to eq(Car::MyCar::SPEED_OFFSET)
    end

    it "can slow down" do
      opel.slow_down(50)
      expect(opel.current_speed).to eq -50
    end

    it "can slow down to default value" do
      opel.slow_down
      expect(opel.current_speed).to eq(-Car::MyCar::SPEED_OFFSET)
    end

    it 'changes the color of the object' do
      opel.spray_paint :red
      expect(opel.color).to eq(:red)
    end

    it 'has no defects' do
      expect(opel.defects).not_to include(failure)
    end

    it 'is adding defects' do
      opel.add_defects(failure)
      expect(opel.defects).to include(failure)
    end

    it 'lists all the defects' do
      opel.add_defects(failure)
      expect(opel.service_info).to eq("Detected defects: #{failure}")
    end

    it 'can fix a defect' do
      opel.add_defects(failure)
      opel.fix_defect('water pump failure')
      expect(opel.defects).not_to include('water pump failure')
    end
end
