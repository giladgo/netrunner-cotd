class Selection < ActiveRecord::Base

  def self.of_today
    Selection.where(when: Date.today).order(created_at: :desc).first
  end

  def self.new_selection_for_today(card_code)
    selection = Selection.new(card_code: card_code, when: Date.today)
    selection.save!
    selection
  end
end
