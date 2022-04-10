require_relative "MagicArray"

def main 
    puts "inside main"

    a = MagicArray.new(20)
    #a.print
    #a.attempted(2) # private method so will error
    puts a.has(20)
    # puts a.default # error because private variable

end



if __FILE__ == $0
    main()
end