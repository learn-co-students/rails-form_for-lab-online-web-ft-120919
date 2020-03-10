Rails.application.routes.draw do


=begin
  get 'school_classes/index'
  get 'school_classes/new'
  get 'school_classes/create'
  get 'school_classes/show'
  get 'school_classes/edit'
  get 'school_classes/update'
  get 'school_classes/destroy'

  get 'students/index'
  get 'students/new'
  get 'students/create'
  get 'students/show'
  get 'students/edit'
  get 'students/update'
  get 'students/destroy'
=end

  resources :school_classes
  resources :students

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
