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
            tower_size_before = game.tower_array[0].length
            game.move(0, 1)
            tower_size_after = game.tower_array[0].length + 1
            expect(tower_size_before).to eq(tower_size_after) 
        end
    end

    describe "#win?" do 
        it "checks if the game is won" do
            game.tower_array[-1] = (1..game.disks).to_a.reverse
            expect(game.win?).to be true 
        end
    end

end
