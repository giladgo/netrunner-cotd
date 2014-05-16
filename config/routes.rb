NetrunnerCotd::Application.routes.draw do
  get '/card/cotd'
  get '/card/:code', to: 'card#show'
  get '/', to: redirect('/card/cotd')
end
