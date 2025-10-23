
class Burger

    def initialize
        @maxBites = 3
        @bitesTaken = 0
    end

    def eat(bites)
        @bitesTaken += bites
        if @bitesTaken >= @maxBites
            puts "You have eaten the burger. Yummy!"
        else
            puts "You take a bite of the burger."
        end
    end
end

class UniverseDestroyingBurger < Burger
    def eat(bites)
        @bitesTaken += bites
        if @bitesTaken >= @maxBites
            puts "You have eaten the universe destroying burger! You fool, you've destroyed the universe!"
        else
            puts "You take a bite of the universe destroying burger... you shouldn't do that again."
        end
    end
end

b1 = Burger.new
b2 = Burger.new
b1.eat(1)
b1.eat(1)
b1.eat(1)
b2.eat(5)
udb = UniverseDestroyingBurger.new
udb.eat(2)
udb.eat(3)
