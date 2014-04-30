class CardController < ApplicationController
  def cotd
    @card = Card.cotd
    ap @card
  end
end
