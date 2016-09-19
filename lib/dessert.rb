class Dessert
    
    attr_accessor :name, :calories
    
    def initialize(name, calories)  
        # Instance variables  
        @name = name  
        @calories = calories 
    end
  
    def healthy?
        @calories < 200
    end
    
    def delicious?
        true
    end
end

class JellyBean < Dessert
    def initialize(flavor)
        @flavor = flavor
        @calories = 5
        @name = flavor + ' jelly bean'
    end
    
    def delicious?
        @flavor != "licorice"
    end
end
