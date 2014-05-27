require_relative 'player'

class Team

	attr_accessor :team_name, :players_pool

	def initialize()
		@team_name = 'Default team name'
		@players_pool = []
	end

	def set_name(name)
		@team_name = name
	end

	def add_player(name, position)
		@players_pool.push(Player.new(name, position))
	end

	def remove_player(name, position)
	end

	def show_players()
	end

	def filter_by_position(position)
	end

end