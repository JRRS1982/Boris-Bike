require './lib/docking_station'

describe DockingStation do
  it 'responds to release bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'releases a working bike' do
    focus_cayo = subject.release_bike
    expect(focus_cayo).to be_working
  end

  it 'docks a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end
end
