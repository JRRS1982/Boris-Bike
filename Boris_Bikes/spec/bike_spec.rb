require './lib/bike'

describe Bike do
  it 'can be reported as broken' do
    subject.report_broken
    expect(subject.broken).to eq(true)
  end
end
