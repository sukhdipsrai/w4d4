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

end