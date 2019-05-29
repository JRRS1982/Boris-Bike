require 'docking_station'

describe DockingStation do
  describe '#release_bike' do
    it 'raises an error if there are no bikes available' do
      expect { subject.release_bike }.to raise_error('No bikes available')
    end

    it 'responds to release bike' do
      expect(subject).to respond_to(:release_bike)
    end
  end

  describe '#dock' do
    it 'docks a bike' do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error('Docking Station full')
    end
  end
end
