require 'docking_station'
require 'bike'

describe DockingStation do
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do 
    it 'docks a bike if not full and raise error if full' do 
      DockingStation::DEFAULT_CAPACITY.times do 
      subject.dock(Bike.new)
      end 
      expect { subject.dock(Bike.new)}.to raise_error 'Dock is full'
    end 

    it "does not release bike if broken" do
      docking_station = DockingStation.new
      bike = Bike.new
      bike.broken = true
      docking_station.dock(bike)
      expect { docking_station.release_bike }.to raise_error "Bike is broken" 
    end
  end 


  describe '#initialize' do 
    it 'default capacity is 20 bikes' do 
      expect(subject.capacity).to eql 20
    end 

    it 'a capacity of 30 is passed into Class' do
      a_new_instance = DockingStation.new(30)
      expect(a_new_instance.capacity).to eql 30
    end
  end 
  
end
