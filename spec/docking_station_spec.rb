require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it "releases a Bike" do
    expect(subject.release_bike.class).to eq Bike
  end
end
