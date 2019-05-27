require './lib/bike.rb'
class DockingStation
  attr_reader :bikes 
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
  	@bikes = []
  	@capacity = capacity
  end 

  def release_bike
    raise 'No bikes available' if empty?
		raise "No working bikes" if @bikes.include? true
		if @bikes[-1].broken == true 
			raise "Bike is broken"
		end
		@bikes.pop
  end

  def dock(bike)
	raise 'Dock is full' if full?
	@bikes << bike
  end

private 

	def full?
		@bikes.count >= @capacity
	end 

	def empty?
		@bikes.empty?
	end

end
