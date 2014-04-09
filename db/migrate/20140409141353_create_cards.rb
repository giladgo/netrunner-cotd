class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :code
      t.string :title
      t.string :card_type
      t.string :type_code
      t.string :subtype
      t.string :subtype_code
      t.text   :text
      t.integer :cost
      t.string :faction
      t.string :faction_code
      t.string :faction_letter
      t.integer :factioncost
      t.text  :flavor
      t.string :illustrator
      t.integer :number
      t.integer :quantity
      t.string :setname
      t.string :set_code
      t.string :side
      t.string :side_code
      t.boolean :uniqueness
      t.integer :cyclenumber
      t.string :url
      t.string :imagesrc
      t.string :largeimagesrc
    end
  end
end
