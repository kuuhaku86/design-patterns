require_relative "Menu"
require_relative "IRestaurant"

class VegRestaurant < IRestaurant
    def initialize
        @menu = Menu.new("Veg Menu")
    end

    def getMenus
        @menu
    end
end