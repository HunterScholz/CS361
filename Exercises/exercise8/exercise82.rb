class Employee

  def prepare(bike)
    bike.get_prepared
  end

end

class Bike

    def get_prepared
        case self
        when BmxBike
            clean()
            return
        when RoadBike
            lubricate_gears()
            return
        when MountainBike
            adjust_suspension()
            return
        when Tricycle
            adjust_seat()
            return
        end
        puts 'Uhh, boss, I dunno how to do that.'
    end
end

class BmxBike < Bike

  def clean
    puts 'Cleaning...'
  end

end

class RoadBike < Bike

  def lubricate_gears
    puts 'Lubricating gears...'
  end

end

class MountainBike < Bike

  def adjust_suspension
    puts 'Adjusting suspension...'
  end

end

class Tricycle < Bike

  def adjust_seat
    puts 'Adjusting seat...'
  end

end

class Unicycle < Bike
end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new, Unicycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.prepare(bike)
end
