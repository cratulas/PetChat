Rails.application.routes.draw do
  get 'home/indexVisit'
  get 'home/indexUser'

  devise_for :veterinaries
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#indexVisit"
end
