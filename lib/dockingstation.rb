class DockingStation

attr_reader :dockedbikes
DEFAULT_CAPACITY = 20

  def initialize
    @dockedbikes = []
  end
  

  def release_bike
    # Ask docking station to release bike
    if empty?
      raise
    end
    bike = Bike.new
  end

  def dock(bike_instance_being_docked)
    if full?
      raise
    end 
    @dockedbikes.push(bike_instance_being_docked)
  end

  private

  def full?
    @dockedbikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @dockedbikes.empty?
  end

end
