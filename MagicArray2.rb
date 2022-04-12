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

        i = 0
        while i < input
            @@indices.chooce_set(i,i)
            i += 1
        end

    end










end