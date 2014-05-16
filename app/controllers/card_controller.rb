class CardController < ApplicationController
  def cotd
    @card = Card.cotd
    render :card
  end

  def show
    @card = Card.where(code: params[:code]).first
    render :card
  end
end
