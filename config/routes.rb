Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :shops, only: [:home, :show, :edit] do
    resources :days, only: [:index, :edit, :update] do
      resources :slots, only: [:new, :create, :index, :edit, :update]
    end
  end
end
