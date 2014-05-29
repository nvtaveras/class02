require 'spec_helper'
require 'team'

describe Team do

	describe "#add_player" do

		context "with a new player" do
			it "should add the player to the current team" do
				t = Team.new
				t.add_player('Shaquille Oneal', 'Center')
				expect t.players_pool.any? { |p| p.name == 'Shaquille Oneal' && p.position == 'Center' }.should == true
			end
		end

	end

end