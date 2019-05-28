require './lib/bike'

describe Bike do
  it 'is expected to respond to working?' do
    expect(subject).to respond_to(:working?)
  end
end
