require 'rspec'
require_relative '../../lib/tractor'

describe Tractor do
  it 'should exist' do
    expect(subject).to be_a(Tractor)
  end
  it 'should add fuel if fuel is low' do
    subject.fuel = 1
    expect(subject.add_fuel).to be_truthy
  end
  it 'should mount blade if it snowed' do
    subject.snow = 1
    expect(subject.mount_blade).to be_truthy
  end
  it 'should mount bush hog if the grass grew' do
    subject.grass = 1
    expect(subject.mount_hog).to be_truthy
  end
  it 'should mount post drill if fence must be built' do
    subject.fence = 1
    expect(subject.mount_drill).to be_truthy
  end
  it 'should say "Drink beer" if no work triggers present' do
    expect(subject.work).to eq('Drink beer')
  end
end
