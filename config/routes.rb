Rails.application.routes.draw do
  resources :school_classes, only: [:create, :new, :show, :edit, :update]
  resources :students, only: [:create, :new, :show, :edit, :update]
end
