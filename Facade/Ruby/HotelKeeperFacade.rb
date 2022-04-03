require_relative "NonVegRestaurant"
require_relative "VegNonBothRestaurant"
require_relative "VegRestaurant"

class HotelKeeperFacade
    def getVegMenu
        vegRestaurant = VegRestaurant.new
        vegRestaurant.getMenus.describe
    end

    def getNonVegMenu
        nonVegRestaurant = NonVegRestaurant.new
        nonVegRestaurant.getMenus.describe
    end

    def getVegNonMenu
        vegNonBothRestaurant = VegNonBothRestaurant.new
        vegNonBothRestaurant.getMenus.describe
    end
end