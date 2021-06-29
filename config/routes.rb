Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Core::Engine, at: '/'
  mount Tasks::Engine, at: '/'
  mount Contacts::Engine, at: '/'
end
