Rails.application.routes.draw do
    root 'dojos#index'

    get 'dojos/index'

    get 'dojos/new' => 'dojos#new'

    get 'dojos/edit'

    post 'create' => 'dojos#create'

    get 'dojos/:id' => 'dojos#show'

    get 'dojos/:id/edit' => 'dojos#edit'

    patch 'dojos/:id' => 'dojos#update'

    delete 'dojos/:id' => 'dojos#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
