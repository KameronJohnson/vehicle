require('rspec')
require('vehicle')

describe(Vehicle) do
  describe("#age") do
    it("returns the vehicle age") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      #test_vehicle is an instance of our Vehicle object
      expect(test_vehicle.age()).to(eq(15))
    end
  end

  describe("#worth_buying?") do
    it("returns false if vehicle is not american made and younger than 16 years") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.worth_buying?()).to(eq(false))
    end
  end
end
