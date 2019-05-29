require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it 'raises an error if there are no bikes available' do
      expect { subject.release_bike }.to raise_error('No bikes available')
    end

    it 'responds to release bike' do
      expect(subject).to respond_to(:release_bike)
    end

    it 'raises an error if the bike has been reported as broken' do
      bike = Bike.new
      bike.report_broken
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error('Bike is broken')
    end
  end

  describe '#dock' do
    it 'docks a bike' do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
    end

    it 'raises an error when full' do
      bike = double(Bike.new)
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error('Docking Station full')
    end
  end

  describe '#capacity' do
    it 'capacity raises a full error if exceeded' do
      bike = double(Bike.new)
      subject.capacity.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error('Docking Station full')
    end

    it 'allows capacity to be updated when you want, not just at initialize' do
      bike = double(Bike.new)
      subject.capacity = 25
      24.times { subject.dock(bike) }
      expect { subject.dock(bike) }.not_to raise_error
    end

    it 'Raise an error if exceed the new capactity' do
      bike = double(Bike.new)
      subject.capacity = 25
      25.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error('Docking Station full')
    end
  end
end
