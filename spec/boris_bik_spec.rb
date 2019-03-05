require './lib/boris_bike.rb'

describe "Create a person" do
  it "Creates a person" do
    expect(person("Jeremy")).to eq "Jeremy"
  end
end


describe "Check the class" do
  it "Check the class" do
    expect(DockingStation.new(1).docking_station).to eq true
  end
end

describe "release bike" do
  it "release" do
    expect(DockingStation.new(1).release_bike(docking_station)).to eq "release"
  end
end