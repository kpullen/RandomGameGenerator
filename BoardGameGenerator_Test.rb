require 'rspec'
require './BoardGameGenerator'

describe RandomGameGenerator do

	before :each do
		@game = RandomGameGenerator.new
	end

	it "should check to make a BoardGameGenerator" do
		@game.should be(RandomGameGenerator.new)
	end

end