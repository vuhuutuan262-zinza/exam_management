Rails.application.routes.draw do
  root 'static_pages#home'
  devise_scope :user do
    get 'signin' => 'users/sessions#new'
    get 'signout' => 'users/sessions#destroy'
    get 'create' => 'users/registrations#new', as: 'new_user'
  end
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  resources :users, only: [:create, :new, :update, :index] do
    resource :profile
  end
  resources :subjects
  resources :exams
  resources :questions
end
