class Card < ActiveRecord::Base

  def self.cotd
    todays_card = Selection.get_or_create_of_today
    Card.where(code: todays_card.card_code).first
  end
end
