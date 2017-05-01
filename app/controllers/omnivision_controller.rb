class OmnivisionController < ApplicationController

	def index
		@amonkhet_cards = MTG::Card.where(set: 'AKH').all
	end
end
