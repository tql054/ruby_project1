class Room 
    def initialize(category, price)
        @category = category
        @price = price
    end

    def getCategory
        return @category
    end

    def getPrice
        return @price
    end
end