Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/indexVisit'
  get 'home/indexUser'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  devise_for :veterinaries, controllers: {
    sessions: 'veterinaries/sessions',
    passwords: 'veterinaries/passwords',
    registrations: 'veterinaries/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#indexVisit"
end
