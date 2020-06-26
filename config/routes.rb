Rails.application.routes.draw do
  get 'welcome/index'
  root to: 'welcome#index'
  resources :innings, shallow: true do
    resources :battings do
      resources :batters
    end
    resources :bowlings do
      resources :bowlers
    end
    resources :overs do
      resources :balls
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
