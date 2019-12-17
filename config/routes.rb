Rails.application.routes.draw do

  scope :admin do
    devise_for :administrators, controllers: { sessions: 'admin/administrators/sessions' }
  end

  namespace :admin do
    root to: 'main#index'

    resources :teachers, except: :show
    resources :disciplines, except: :show
    resources :courses, except: :show do
      resources :lessons, except: :show
    end

    resources :lessons, only: [] do
      post :sort, on: :collection
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
