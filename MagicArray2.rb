require_relative "MagicArray"

# This class creates a dynamic array that can increase 
# in size when more values out of the bound are added
# utilizes MagicArray.rb for its implementation
class MagicArray2

    # private class variables
    @@default 
    @@MagicArray = []
    @@ent = 0
    @@has_entry = []
    @@pos = 0

    @@indices = MagicArray.new(0)
    @@data = MagicArray.new(0)



    # constructor
    def initialize(input)
        @@indices = MagicArray.new(input)
        @@data = MagicArray.new(input)

        # i = 0
        # while i < input
        #     @@indices.set(i,i)
        #     i += 1
        # end

        for i in 0..input-1
            @@indices.set(i,i)
        end

    end


    # gets the value from the MagicArray at index input
    def get(input)
        if(input > @@indices.currentSize())
            @@indices.set(input, input)
        end

        return @@data.get(@@indices.get(input))
    end


    # Sets the value in the given index
    def set(index, data)
        @@indices.set(index, index)
        @@data.set(@@indices.get(index), data)
    end


    # Returns the total number of positions accessed by 'set' or 'get'
    def total_entries()
        return @@data.total_entries()
    end

    # returns the current size of the MagicArray
    def currentSize()
        return @@data.currentSize()
    end


    def has(input)
        return @@data.has(@@indices.get(input))
    end


end