require "dockingstation"
require "bike"

describe DockingStation do
  it "releases bike" do
    # return_object = subject.release_bike?
    bike = Bike.new
    subject.dock(bike) 
    expect(subject.release_bike.instance_of? Bike).to eq true 
  end
  
  it "gets bike and checks its working" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike.working?).to eq true
  end

  it "registers a docked bike" do
    bike = Bike.new
    expect(subject.dock(bike).first.instance_of? Bike).to eq true
  end

  it "returns the value of the dockedbike variable" do
    dockingstation = DockingStation.new
    bike = Bike.new
    dockingstation.dock(bike)
    expect(dockingstation.dockedbikes.first.instance_of? Bike).to eq true
  end

  it "sends an error message if you try and release a bike ane there are none" do
    dockingstation = DockingStation.new
    bike = Bike.new 
    expect { dockingstation.release_bike }.to raise_error 
  end

  it "sends error message if person dock bike if full" do
    dockingstation = DockingStation.new
    bike = Bike.new 
    DockingStation::DEFAULT_CAPACITY.times { dockingstation.dock(bike) }
    expect {dockingstation.dock(bike)}.to raise_error
  end
  
  
end

