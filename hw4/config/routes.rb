Rottenpotatoes::Application.routes.draw do
  resources :movies
  match 'movies/:id/same_director', to: 'movies#same_director', as: 'movies_with_same_director', via: [:get]
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
