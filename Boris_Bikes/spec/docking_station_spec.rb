require './lib/docking_station'

describe DockingStation do
  it 'releases a working bike from the Docking Station' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike.working?).to eq(true)
  end

  it 'responds to release bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'releases a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'responds to bike' do
    expect(subject).to respond_to(:bike)
  end

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq(bike)
  end

  it 'retuns a bike from the bike method' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end
end
