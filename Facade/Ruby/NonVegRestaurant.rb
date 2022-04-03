require_relative "Menu"
require_relative "IRestaurant"

class NonVegRestaurant < IRestaurant
    def initialize
        @menu = Menu.new("Non Veg Menu")
    end

    def getMenus
        @menu
    end
end