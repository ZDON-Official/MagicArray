require_relative "MagicArray"

def main 
    puts "inside main"

    a = MagicArray.new(20)
    #a.print
    #a.attempted(2) # private method so will error
    #puts a.has(20)
    # puts a.default # error because private variable


    puts a.get(0)
    puts a.get(10)
    puts a.get(150)
    puts a.get(250)
    puts "Total #{a.total_entries} entries"

    # set values 
    a.set(10,2)
    a.set(20,4)
    a.set(30,6)
    a.set(40,8)

    puts "Total #{a.total_entries} entries"
    puts a.get(0)
    puts a.get(10)
    puts a.get(150)
    puts a.get(250)

    a.set(50,20)
    a.set(150, 20)
    puts "Total #{a.total_entries} entries" 

end



if __FILE__ == $0
    main()
end