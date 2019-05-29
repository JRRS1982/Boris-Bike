# this is the object of a docking station, that should contain main logic
class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if empty?

    if @bikes[-1].broken == true
			raise "Bike is broken"
    end

    @bikes.pop
  end

  def dock(bike)
    raise 'Docking Station full' if full?

    @bikes << bike
  end

  private

  attr_reader :bikes

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
