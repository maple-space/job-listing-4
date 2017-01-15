Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/welcome/', to: 'welcome#index'
  namespace :admin do
    resources :jobs do
      resources :resumes
      member do
        post :publish
        post :hide
      end
    end
  end
  resources :jobs do
    collection do
      get :search
    end
    resources :resumes
  end

  # get '/search1/', to: 'jobs#search'

  root 'jobs#index'
end
