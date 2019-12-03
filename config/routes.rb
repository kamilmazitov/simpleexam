Rails.application.routes.draw do
  namespace :admin do
    root to: 'main#index'

    get 'main/index'
    resources :teachers, except: :show
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
