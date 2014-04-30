class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.string :card_code
      t.date :when

      t.timestamps
    end
  end
end
