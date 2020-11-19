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

        it "removes duplicate elements" do
            arr = [1,1]
            expect(arr.uniq).to eq([1]) 
        end
        
        it "new arr contains unique elements in order they appeared"

    end


end