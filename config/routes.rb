Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :investors, except: [:destroy]
  resources :accounts, except: [:destroy]
  resources :taxlots, except: [:destroy]
  resources :securities, except: [:destroy]

end
