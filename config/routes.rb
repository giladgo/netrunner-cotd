NetrunnerCotd::Application.routes.draw do
  get '/selection/cotd', to: 'selection#cotd'

  resources :selection, :only => [:index, :show]

  get '/card/:code', to: 'card#show'
  get '/', to: redirect('/selection/cotd')
end
