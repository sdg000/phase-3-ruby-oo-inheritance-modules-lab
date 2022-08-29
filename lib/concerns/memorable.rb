module Memorable 

    #NAMESPACING CLASS METHODS / INSTANCE METHODS 
    module ClassMethods
        #define reset all as module to be exported
        def reset_all
            all.clear
        end

        #define count all as module to be exported
        def count
            all.count
        end
    end

    module InstanceMethods
        def initialize
            self.class.all << self
        end

    end
            
end