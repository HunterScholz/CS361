class Player
  attr_accessor :name, :hp, :str, :dex, :con, :int, :wis, :cha

  def initialize(name, hp, stats, armor, weapon)
    @name = name
    @hp = hp
    @str = stats[0]
    @dex = stats[1]
    @con = stats[2]
    @int = stats[3]
    @wis = stats[4]
    @cha = stats[5]
    @armor = armor
    @weapon = weapon
  end

  def damage(p)
    @hp -= p
  end

  def compute_damage(base)
    # Pretend this is some complex thing with AC
  end

  # And more functions here to handle stats, weapons, and armor
end

class Armor
  def initialize(name, ac)
    @name = name
    @ac = ac
  end
end

class weapon
  def initialize(name, damage)
    @name = name
    @damage = damage
  end
end



stats = [9, 12, 8, 18, 10, 2]
iron_helm = Armor.new("iron helmet", 8)
chain = Armor.new("chain mail", 16)
short_sword = Weapon.new( "short sword", "1d6" )
p = Player.new("Alfredo", 10, stats, [iron_helm, chain], [short_sword])