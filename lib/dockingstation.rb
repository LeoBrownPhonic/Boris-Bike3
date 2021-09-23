class DockingStation

attr_reader :dockedbike
  def initialize
    @dockedbike = []
  end
  

  def release_bike
    # Ask docking station to release bike
    if @dockedbike.empty?
      raise
    end
    bike = Bike.new
  end

  def dock(bike_instance_being_docked)
    if @dockedbike[0] != nil 
      raise
    end 
    @dockedbike.push(bike_instance_being_docked)
  end
end
