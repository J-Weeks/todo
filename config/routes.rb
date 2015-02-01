Rails.application.routes.draw do
  resources :lists, shallow: true do
    resources :tasks, only: [:index, :new, :create]
  end
  resources :tasks, except: [:index, :new, :create], shallow: true do
    resources :notes, only: [:index, :new, :create]
  end
  resources :notes, only: [:show, :edit, :update, :destroy]
end
