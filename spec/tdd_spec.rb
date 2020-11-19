require "tdd"
require "rspec"

RSpec.describe Array do
    let(:arr) {Array.new([])}
    describe "#uniq" do
        it "does not modify the original array" do 
            arr = [1,1]
            arr.uniq
            expect(arr).to eq([1,1]) 
        end 

        it "returns new array" do 
            arr = [1,1]
            arr.uniq
            expect(arr).not_to be(arr.uniq) 
        end 

        it "removes duplicate elements" do
            arr = [1,1]
            expect(arr.uniq).to eq([1]) 
        end
        
        it "new arr contains unique elements in order they appeared" do 
            arr =[1,2,3,1]
            expect(arr.uniq).to eq([1,2,3])
        end
    end

    describe "#to_sum" do

        it "does not modify the original array" do 
            arr = [-1, 0, 2, -2, 1]
            arr.to_sum
            expect(arr).to eq([-1, 0, 2, -2, 1]) 
        end 

        it "returns new 2d array" do 
            arr = [-1, 0, 2, -2, 1]
            arr.to_sum
            expect(arr).not_to be(arr.to_sum) 
        end 
        
        #[-1, 0, 2, -2, 1].two_sum # => [[0, 4], [2, 3]]

        it "returns all index positions of element pairs that sum to zero" do 
            arr =[-1, 0, 2, -2, 1]
            test_order = arr.to_sum.map {|subarr| subarr.sort}
            expect(test_order).to eq([[0, 4], [2, 3]])
        end
        
        it "should return an empty array when there are no two items that sum to zero" do
            arr = [1,2,3,4,5]
            expect(arr.to_sum).to eq([])
        end

        it "returns a dictionary sorted pairs in a 2d array" do
            arr =[-1, 0, 2, -2, 1]
            expect(arr.to_sum).to eq([[0, 4], [2, 3]])
        end

    end

    describe "#my_transpose" do
        let(:arr) {[
                    [0, 1, 2],
                    [3, 4, 5],
                    [6, 7, 8]
                            ]}
        let(:transposed) {[
                    [0, 3, 6],
                    [1, 4, 7],
                    [2, 5, 8]
                            ]}
        context "does not modify self and returns a new array" do
            it "does not modify the original array" do 
            arr = [-1, 0, 2, -2, 1]
            arr.my_transpose
            expect(arr).to eq([-1, 0, 2, -2, 1]) 
            end 

            it "returns a new array" do 
            arr = [-1, 0, 2, -2, 1]
            arr.my_transpose
            expect(arr).not_to be(arr.my_transpose) 
            end 
        end
        
        it "transposes original array" do 
            expect(arr.my_transpose).to eq(transposed)
        end

    end

end

describe "#stock_picker" do
    
    context "argument is an array" do
        it "should raise an error if argument is not of Array class" do
            var = "stock"
            expect {stock_picker(var)}.to raise_error(ArgumentError) 
        end
    end
    it "returns the right answer for case 1" do
        arr = [1, 2, 4, 290, 760, 199, 65] #=> [0, 4]
        expect(stock_picker(arr)).to eq([0, 4])
    end
    it "returns the right answer for case 2" do
        arr_crash = [290, 760, 500, 65, 1, 2, 5,]
        expect(stock_picker(arr_crash)).to eq([4, 6])
    end
end