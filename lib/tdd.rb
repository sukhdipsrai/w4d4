class Array

    def uniq
        result = []
        self.each do |ele|
            result << ele if !result.include?(ele)
        end
        result
    end

    def to_sum
        pairs = []
        (0...length).each do |i|
            (i+1...length).each do |j|
                if self[i]+self[j] == 0
                    pairs << [i, j]
                end
            end
        end
        pairs
    end

end