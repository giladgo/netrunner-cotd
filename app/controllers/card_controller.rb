class CardController < ApplicationController
  def cotd
    @card = Card.offset(rand(Card.count)).first
  end
end
