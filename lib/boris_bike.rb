def person(name)
  return name
end

class DockingStation
  
  def initialize(bikes)
    @bikes = bikes  
  end
  
  def docking_station
    if @bikes > 0 
      return true
    else
      return false
    end
  end 

  def release_bike(release)
    if release == true 
      return "release"
    end
  end
  
  def bike(working)
    return working
  end

end

