Rails.application.routes.draw do
  namespace :api do
    resources :categories do
      resources :cards
    end
    get "board", to: "categories#show_categories_with_cards"
  end
  get '*other', to: 'static#index'
end
