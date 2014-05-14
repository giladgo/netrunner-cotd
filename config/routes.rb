NetrunnerCotd::Application.routes.draw do
  get '/card/cotd'
  get '/', to: redirect('/card/cotd')
end
