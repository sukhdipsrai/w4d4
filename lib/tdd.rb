class Array

    def uniq
        result = []
        self.each do |ele|
            result << ele if !result.include?(ele)
        end
        result
    end

end