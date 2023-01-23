Rails.application.routes.draw do
  get 'studentcourse/mycourse'
  get 'studentcourse/lesson'
  get 'checkout/payment'
  post 'checkout', to: 'checkout#payment'
  get 'checkout/payment_complete'
  
  get 'adfeedback/feedback'
  get 'adminorderdetail/orderdetail'
  get 'student/dashboard'
  devise_for :students , :controllers => {registrations: 'registrations'}
  root 'home#index'
  get 'home/index'
  get 'home/search'
  post 'home/search'
  get 'home/lession_player'
  get 'home/contact'
  get 'home/about'
  get 'home/checkout'
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  get 'dashboard', to: 'courses#dashboard'
  resources :lessions
  resources :courses
  resources :feedbacks
  resources :orderdetails
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
