

class MagicArray
   
    #attr_reader :ent


    default = 0
    magicArray = []
    ent = 0
    has_Entry = []    
    pos = 0

    def initialize(input)
        @default = input
        @magicArray = Array.new(input)
        @has_Entry = Array.new(input)
        @ent = 0
        @pos = 0

        #loop
        for i in 0..input do
            set(i)
        end
    end


    # gets the value from the MagicArray at index
    def get(index)
        if has(index) == false
            @ent += 1
        end 
        attempted(index)
        if index < currentSize()
            return @magicArray[index]
        end 
        
        set(index, @default)
        return @default
    end


    # because ruby doesn't support method overloading, this method is here to check if the method
    # set will take one parameter or 2
    def set(index, data = nil)
        if data == nil
            set_default(index)
        else 
            set_2(index, data)
        end
    end

    

    # returns the current size of the array
    def currentSize
        return @magicArray.length
    end

    # returns the total number of entries
    def total_entries
        return @ent
    end


    # add t teh existing value in some position
    def add(index, val)
        choose_set(index, get(index) + val)
    end

    # check if the value has being accessed by set or get
    def has(input)
        if input == 0
            for i in 0..@has_Entry.length-1 do
                unless @has_Entry[i] == @has_Entry[i+1]
                    break
                else
                    return false
                end
            end
        end

        #@has_Entry.each{|i| puts i}
        @has_Entry.each {|e| if e == input then return true end}

        return false
    end


    # prints the value of the Array
    def print
        @magicArray.each {|i| puts i}
    end


    private

    # private helper method for the has(input) method
    def attempted(a)

        if a == 0 && @pos == 0
            @has_Entry[@pos] = a
            @pos += 1
        else
            for i in 0..a do 
                if @has_Entry[i] == a 
                    @has_Entry[i] = a
                    break
                else 
                    @has_Entry[@pos] = a 
                    @pos += 1 
                    break
                end
            end
        end
    end


    # set the value at index with the default value
    def set_default(index)
        @magicArray[index] = @default
    end

    # set the value at inde with data 
    def set_2(index, data)
        if index < currentSize() && index >= 0 
            @magicArray[index] = data
        else
            # create a temp array
            temp = Array.new(currentSize())
            temp_has = Array.new(currentSize())

            # move the value of MagicArray to temp Array

            for i in 0..currentSize() do 
                temp[i] = @magicArray[i]
                temp_has[i] = @has_Entry[i]
            end

            # create a new MagicArray of bigger size
            @magicArray = Array.new(index + 1)
            set(index)

            has_entry = Array.new(index + 1)
    
            for i in 0..currentSize() do 
                @magicArray[i] = temp[i]
                @has_Entry[i] = temp_has[i]
            end

            # call the attempted private method
            attempted(index)
            @magicArray[index] = data
        end
        if has(index) == false
            @ent += 1
        end
    end
end
