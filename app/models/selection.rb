class Selection < ActiveRecord::Base
  belongs_to :card, foreign_key: :card_code, primary_key: :code

  def self.of_today
    Selection.where(when: Date.today).order(created_at: :desc).first
  end

  def self.get_or_create_of_today
    todays_card = Selection.of_today
    unless todays_card.present?
      random_card = Card.offset(rand(Card.count)).first
      puts "Selected card for today: #{random_card.code} - '#{random_card.title}'"
      todays_card = Selection.new_selection_for_today(random_card.code)
    end
    todays_card
  end

  def self.new_selection_for_today(card_code)
    selection = Selection.new(card_code: card_code, when: Date.today)
    selection.save!
    selection
  end

  def printable_when
    self.when.strftime('%B %-d, %Y')
  end
end
