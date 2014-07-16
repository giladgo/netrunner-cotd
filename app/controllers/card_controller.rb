class CardController < ApplicationController
  def show
    @card = Card.where(code: params[:code]).first
    render :_card
  end
end
