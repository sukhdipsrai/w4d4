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

    def my_transpose
        ans = Array.new(length) { Array.new(length) }
        (0...length).each do |i|
            (0...length).each do |j|
            ans[i][j] = self[j][i] 
            end
        end
        ans
    end
    
end

def stock_picker(arr)
    raise ArgumentError if !arr.is_a?(Array)
    stock_max = 0
    result = []

    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            buy_sell = compare_stocks(arr[i], arr[j])
            if buy_sell > stock_max
                stock_max = buy_sell
                result = [i, j]
            end
        end
    end
    result
end

def compare_stocks(num1, num2)
    return num2/(num1.to_f)
end