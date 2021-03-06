require('rspec')
require('pry')
require('vehicle')


describe(Vehicle) do
  before do
    Vehicle.clear
  end

  describe('#make') do
    it('returns the make of the car') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save
      expect(test_vehicle.make).to(eq("Toyota"))
    end
  end
  describe('#model') do
    it('returns the model of the car') do
      test_vehicle = Vehicle.new("Toyota","Prius", 2000)
      test_vehicle.save
      expect(test_vehicle.model).to(eq("Prius"))
    end
  end

  describe('#year') do
    it('returns the year of the car') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save
      expect(test_vehicle.year).to(eq(2000))
    end
  end

  describe('#save') do
    it('adds a vehicle to the array of saved vehicles') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      test_vehicle.save
      expect(Vehicle.all).to(eq([test_vehicle]))
    end
  end

   describe('.all') do
    it('is empty at first') do
  expect(Vehicle.all).to(eq([]))
  end
end

  describe('.clear') do
    it('clears out the array of saved cars') do
      Vehicle.new("Toyota", "Prius", 2000)
      Vehicle.clear
      expect(Vehicle.all).to(eq([]))
    end
  end


  describe(Vehicle) do
    describe('#age') do
      it('describes the cars age') do
        test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
        expect(test_vehicle.age).to(eq(15))
      end
  end
  describe('#worth_buying?') do
    it('returns false if car is not american and is younger than16 years old') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.worth_buying?).to(eq(false))
      end
    end
    describe('#id') do
      it('returns the id of a car') do
        test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
        test_vehicle.save
        expect(test_vehicle.id()).to(eq(1))
      end
    end
    describe(".find") do
      it("returns a car by its id number") do
        test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
        test_vehicle.save()
        test_vehicle2 = Vehicle.new("Toyota", "Corolla", 1999)
        test_vehicle2.save()
        expect(Vehicle.find(test_vehicle.id())).to(eq(test_vehicle))
        end
    end
  end
end
