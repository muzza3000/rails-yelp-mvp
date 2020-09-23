Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: %i[update destroy] do
    # collection do
    # end
    # member do
    # end
    resources :reviews, only: %i[new create]
  end
  # resources :reviews, except: %i[index new create]
end
