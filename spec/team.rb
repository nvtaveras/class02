require_relative 'player'

class Team

	attr_accessor :teamName, :playersPool

	def initialize()
		@teamName = 'Default team name'
		@playersPool = []
	end

	def set_name(name)
	end

	def add_player(name, position)
	end

	def remove_player(name, position)
	end

	def show_players()
	end

	def filter_by_position(position)
	end

end
