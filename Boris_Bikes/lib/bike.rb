# this is the class for the object of a bike to be held in the dock.
class Bike
  attr_accessor :broken

  def intitalize
    @broken = false
  end

  def report_broken
    @broken = true
  end
end
