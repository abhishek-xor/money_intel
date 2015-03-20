Rails.application.routes.draw do
  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resource :educations
  get 'educations/questionnaire' => 'educations#questionnaire'
end
