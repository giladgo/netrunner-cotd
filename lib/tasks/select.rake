namespace :select do
  desc 'Create a card of the day, if doesn''t exist'
  task cotd: :environment do
    Selection.get_or_create_of_today
  end

end
