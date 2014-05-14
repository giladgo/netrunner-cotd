class Card < ActiveRecord::Base

  def self.cotd
    todays_card = Selection.of_today
    unless todays_card.present?
      random_card = Card.offset(rand(Card.count)).first
      puts "Selected card for today: #{random_card.code}"
      todays_card = Selection.new_selection_for_today(random_card.code)
    end
    Card.where(code: todays_card.card_code).first
  end
end
