Rails.application.routes.draw do
  resources :comentarios
  resources :avances
  resources :solucionadors
  resources :retos
  resources :retadors
  resources :facilitadors
  resources :claves
  resources :usuarios
  resources :perfils
  resources :estados
  resources :facultads
  resources :universidads
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
