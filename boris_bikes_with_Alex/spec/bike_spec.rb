require 'bike'
require "./lib/docking_station.rb"

describe Bike do
 it {is_expected.to respond_to :working? }
 it "is working" do
   expect(subject.working?).to eq true
 end

 it "responds to report_broken method" do
  expect(subject).to respond_to(:report_broken)
 end
 
 it "Broken status false when new bike created" do
  expect(Bike.new.broken).to eql false
 end

 it "user can change status of bike to broken" do
  bike = Bike.new
  bike.broken = true
  expect(bike.broken).to eq true
 end

 it "user can change status of bike to broken whilst docking" do
  bike = Bike.new
  dockingstation = DockingStation.new
  dockingstation.dock(bike.broken = true)
  expect(bike.broken).to eql true
 end

end
