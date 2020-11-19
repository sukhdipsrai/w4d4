require "hanoi"
require "rspec"


RSpec.describe Hanoi do
    let(:game) {Hanoi.new}

    describe "#initialize"  do
        it "should make a new game with 3 towers and 3 disks"  do
            expect(game.towers).to eq(3)
            expect(game.disks).to eq(3)
        end
    end

    describe "#move" do 
        it "should move a disk from one tower to  the other" do
        end
        end

        it ""


    end

end
