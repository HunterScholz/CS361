# 3, Law of Demeter violations

class Car
  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
    @tank = "empty"
  end

  def setTank(value)
    @tank = value
  end

  def getTank()
    @tank
  end
end

class Store
  def setGasStation(station)
    @station = station
  end
  
  def getGasStation()
    @station
  end
end

class GasStation
  def fillCar(car)
    car.setTank("full")
    return "full"
  end
end

bmw = Car.new("BMW", "330", 2019)
minimart = Store.new()
shell = GasStation.new()
minimart.setGasStation(shell)

print(bmw.getTank + "\n")
shell.fillCar(bmw)
print(bmw.getTank)
print("\n")
