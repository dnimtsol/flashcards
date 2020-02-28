# frozen_string_literal: true

# cards_controller class
class CardsController < ApplicationController
  def index
    @cards = Card.all
  end
end
