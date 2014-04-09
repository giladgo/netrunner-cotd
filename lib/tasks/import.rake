require 'json'

namespace :import do
  NETRUNNER_HOST = 'http://netrunnerdb.com'

  def get_cards
    conn = Faraday.new(:url => NETRUNNER_HOST) do |faraday|
      #faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end

    response = conn.get '/api/cards/'
    cards = JSON.parse(response.body)
    cards.map do |card|
      new_card = card.clone
      new_card['card_type'] = new_card['type']
      new_card = new_card.slice(*Card.column_names)
      new_card.symbolize_keys
    end
  end

  task :cards => :environment do
    Card.delete_all

    cards = get_cards
    cards.each do |card_data|
      card = Card.new(card_data)
      card.save!
    end
    puts "Imported #{cards.length} cards."
  end


end
