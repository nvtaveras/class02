require 'spec_helper'
require 'team'

describe Team do

	describe "#initialize" do

		context "with team name as parameter" do
			it "should change the team name to the received parameter" do
				t = Team.new('Miami Heat')
				expect t.team_name.should == 'Miami Heat'
			end
		end

		context "without team name as parameter" do
			it "should set a default team name" do
				t = Team.new
				expect t.team_name.should == 'Default Team Name'
			end
		end

	end

	describe "#add_player" do

		context "with a new player" do
			it "should add the player to the current team" do
				t = Team.new
				t.add_player('Shaquille Oneal', 'Center')
				expect t.players_pool.any? { |p| p.name == 'Shaquille Oneal' && p.position == 'Center' }.should == true
			end
		end

		context "with an already existing player" do
			it "should raise an error" do
				t = Team.new
				t.add_player('Shaquille Oneal', 'Center')
				expect {t.add_player('Shaquille Oneal', 'Center')}.to raise_error
			end
		end

	end

	describe "#remove_player" do

		context "with an existing player" do
			it "should delete the player from the current team" do
				t = Team.new
				t.add_player('Shaquille Oneal', 'Center')
				t.remove_player('Shaquille Oneal', 'Center')
				expect t.players_pool.any? { |p| p.name == 'Shaquille Oneal' && p.position == 'Center' }.should == false
			end
		end

	end

	describe "#filter_by_position" do

		context "with an existing player position" do
			it "should return an array with all the players with that position" do
				t = Team.new
				t.add_player('Shaquille Oneal', 'Center')
				t.add_player('Lebron James', 'Shooting Guard')
				t.add_player('Kevin Duran', 'Shooting Guard')
				expect t.filter_by_position('Shooting Guard').any? { |p| p.position != 'Shooting Guard' }.should == false
			end
		end

	end

end