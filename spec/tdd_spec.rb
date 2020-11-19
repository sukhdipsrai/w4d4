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

        it "finds all index positions of element pairs that sum to zero" do 
            arr =[-1, 0, 2, -2, 1]
            expect(arr.to_sum).to eq([[0, 4], [2, 3]])
        end
        
        it "" do
            arr = [1,2,3,4,5]
            expect(arr.to_sum).to eq([])
        end

        it "returns a dictionary sorted pairs in a 2d array" do
        
        end
    end


    end


end