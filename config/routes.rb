Findr::Application.routes.draw do
  root 'home#index'
  get '/search' => "home#search"
  get '/photos/:id' => 'photos#show', :as => 'photo'
end
