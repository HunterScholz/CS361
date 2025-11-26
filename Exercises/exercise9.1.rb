# Don't modify this class
class Duck
  def quack
    puts "Quack!"
  end

  def waddle
    puts "Waddle"
  end
end

# Don't modify this function
def duck_activate(d)
  d.quack
  d.quack
  d.waddle
  d.quack
end

class Panther
  # Do not modify this method
  def roar
    puts "Roar!"
  end

  # Do not modify this method
  def prowl
    puts "You hear nothing"
  end

  # Created these two methods, with
  # the same names as called in duck_activate()
  def quack
    puts "RawrQuack!"
  end

  def waddle
    puts "SneakWaddle"
  end
end

# Don't modify below this line
d = Duck.new()
duck_activate(d)

p = Panther.new()
duck_activate(p)