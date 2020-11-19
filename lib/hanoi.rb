class Hanoi

    attr_reader :towers, :disks, :tower_array
    def initialize(towers = 3, disks = 3)
        @towers = towers
        @disks = disks
        @tower_array = Array.new(towers) {Array.new()}
        @tower_array[0] = [3, 2, 1]
    end

    def move(t1, t2)
        @tower_array[t2] << @tower_array[t1].pop

    end

    def win?
        @tower_array[-1] == (1..@disks).to_a.reverse
    end

    def get_move
        until win?
            self.render
            p " Give me first tower"
            t1 = gets.chomp.to_i
            p " Give me second tower"
            t2 = gets.chomp.to_i

            if valid_move?(t1,t2)
                move(t1,t2)
            else
                p "Not Valid Moves"
            end
        end
    end

    def valid_move?(t1,t2)
        return false if t1 > towers && t1 <= 0
        return false if t2 > towers && t2 <= 0
        return false if t2 == t1
        return false if tower_array[t1].empty? 
        true
    end

    def render 
        flipped = tower_array.dup
        # pad it to look pretty, then transpose
        flipped.each do |cols|
            p cols
        end     
    end

end

h = Hanoi.new
h.get_move