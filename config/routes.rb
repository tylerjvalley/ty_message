Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'chatroom#index'
  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
