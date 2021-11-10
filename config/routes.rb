Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [:new, :create]
  end
  # GET "restaurants" -- index -- Restaurant;
  # GET "restaurants/new" -- new -- Restaurant;
  # POST "restaurants" -- create -- Restaurant;
  # GET "restaurants/38" -- show -- Restaurant;
  # GET "restaurants/38/reviews/new" -- new -- Review;
  # POST "restaurants/38/reviews" -- create -- Review;
end
