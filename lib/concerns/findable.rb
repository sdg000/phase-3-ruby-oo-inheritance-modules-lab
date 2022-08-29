module Findable

# when called by a Class, this method will iterate through all Instances of the class store 
# in a probable @@Class variable and find any item that matches the parameter passed to the method
    def find_by_name(name)
        self.all.find{|item| item.name == name}

    end

    # Alternatively
    # def find_by_name(name)
    #     all.find{|item| item.name == name}

    # end

end