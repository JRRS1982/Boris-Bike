require './lib/docking_station'

describe DockingStation do
  it 'responds to release bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'docks a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'responds to bike' do
    expect(subject).to respond_to(:bike)
  end

  it 'retuns a bike from the bike method' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end

  # feature test
  describe '#release_bike' do
    it 'raises an error if there are no bikes available' do
      expect { subject.release_bike }.to raise_error('No bikes available')
    end
  end

  describe '#dock' do
    it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

    it 'raises an error when full' do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new) }.to raise_error ('Docking Station full')
    end
  end
end
