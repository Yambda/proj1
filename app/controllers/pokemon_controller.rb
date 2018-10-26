class PokemonController < ApplicationController
	def capture
		@id = params[:id]
		current = Pokemon.all.find_by(id: @id)
		current.update(trainer: current_trainer)
		redirect_to '/'
	end

	def damage
		@id = params[:id]
		current = Pokemon.all.find_by(id: @id)
		if current.health <= 10
			current.destroy
		else
			current.update(health: current.health - 10)
		end
		redirect_to trainer_path(id: current.trainer_id)
	end

	def create
		name = params[:name]
		ndex = params[:ndex]
		new_pokemon = Pokemon.create(name: name, health: 100, level: 1, ndex: 8, trainer: current_trainer)
		new_pokemon.save
		redirect_to trainer_path(id: new_pokemon.trainer_id)
	end
end
