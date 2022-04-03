require_relative "Menu"
require_relative "IRestaurant"

class VegNonBothRestaurant < IRestaurant
    def initialize
        @menu = Menu.new("Veg Non Both Menu")
    end

    def getMenus
        @menu
    end
end