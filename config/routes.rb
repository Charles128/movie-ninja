MovieNinja::Application.routes.draw do

  root to: "users#index"
  resources :users, only: [:index, :create, :show]
  resources :sessions, only: [:create, :destroy]
  resources :surveys, only: [:index, :new]

  get ':surveys/:survey_url', to: 'surveys#show', as: :survey
end