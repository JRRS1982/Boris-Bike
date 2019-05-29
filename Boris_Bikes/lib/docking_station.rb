class DockingStation
  attr_reader :bike

  def release_bike
    raise 'No bikes available' if @bike.nil?

    @bike
  end

  def dock(bike)
    @bike = bike
  end
end
