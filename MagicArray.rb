

class MagicArray
   


    default = 0
    magicArray = []
    ent = 0
    has_Entry = []    
    pos = 0

    def initialize(input)
        @defi = input
        @magicArray = Array.new(input)
        @has_Entry = Array.new(input)

        #loop
        for i in 0..input do
            set(i)
        end
    end


    def get(a)
        
    end


    def set(input)
        @magicArray[input] = default
    end

    def set(index, data)
        
    end


    def has_value(input)
        if input == 0
            for i in 0..@has_Entry.length-1 do
                unless @has_Entry[i] == @has_Entry[i+1]
                    break
                else
                    return false
                end
            end
        end

        @has_Entry.each {|e| if e == input then return true end}

        return false
    end


    def print
        @magicArray.each {|i| puts i}
    end

end


def main 
    puts "inside main"

    a = MagicArray.new(20)
    puts a.has_value(20)
    a.print
end



if __FILE__ == $0
    main()
end