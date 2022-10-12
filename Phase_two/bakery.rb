class Cake
    def initialize
        @flavour = ""
        @size = 100
    end
    def set_flavour(flavour)
        @flavour = flavour
    end
    def take_slice(slice)
        @size -= slice
        p "You have taken a #{slice} percent sized slice. There is #{@size} percent cake remaining."
    end
    attr_reader :flavour, :size
end

class Baker 
    def initialize
    @stomach_space_remaining = 100
    # You can only eat up to 100 sections of cake in one sitting.
    @cakes_sampled = []
    # You must sample at least 5 cakes in order to ensure quality!
    
    end
    
    def eat_cake(cake, slice)
        cake.take_slice(slice)
        if @cakes_sampled.include? cake
            "You've tried this one already!"
        else
            @cakes_sampled << cake
            @stomach_space_remaining -= slice
        end
    end

    def check_space
        p "You have eaten #{@cakes_sampled.length} cakes. You have #{@stomach_space_remaining} percent space remaining in your belly!"
        if @cakes_sampled.length > 4
            p "You have sampled more than enough cake. Time to open the shop!"       
            exit()
        elsif @stomach_space_remaining < 0
            p "You have filled up on too much cake. You pass out. The shop makes no business this day."
            exit()
        end
        @stomach_space_remaining
    end

    def cakes?
        @cakes_sampled.each {|cake| puts cake.flavour}
    end

    def choose_favourite
        puts "Which was your favourite cake?"
        cakes?()
        puts "Pick the number as it appears in the list."
        choice = gets
        choice = choice.to_i - 1
        return "#{@cakes_sampled[choice].flavour} was your favourite!"
    end
end
