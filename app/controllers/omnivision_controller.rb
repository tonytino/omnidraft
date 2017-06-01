class OmnivisionController < ApplicationController

	def index
	end

	def search
		# mana_cost = params[:mana].split.map { |char| char = "{#{char}}" }.join ''
		mana_pool = params[:mana].split('')
		colorIdentities = mana_pool.uniq.join '|'
		cmc = mana_pool.count
		set = params[:set_acronym]
		@cards = MTG::Card.where(set: set).where(cmc: cmc).where(colorIdentity: colorIdentities).all
	end
end
