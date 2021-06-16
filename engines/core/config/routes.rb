Core::Engine.routes.draw do
  devise_for :users, class_name: "Core::User", module: :devise

  root to: 'dashboard#index'
end
