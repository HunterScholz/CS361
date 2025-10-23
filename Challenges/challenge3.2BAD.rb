class Meal

    def initialize
        @food = Food.new()
    end

    def getFood
        return @food
    end

end

class Food
    def initialize
        name = "burger"
        @ingredients = Ingredient.new()
    end

    def getIngredients
        return @ingredients
    end

end

class Ingredient
    def initialize
        @@allItems = ["tomato", "cheese", "paddy", "pickles", "onions"]
    end

    def removeItem(item)
        if @@allItems.include?(item)
            @@allItems.delete(item)
            puts("You have removed the #{item}")
        end
    end

    def listItems
        puts @@allItems
    end

end

meal = Meal.new()
meal.getFood.getIngredients.removeItem("tomato")
meal.getFood.getIngredients.listItems