Rails.application.routes.draw do
    get 'students/index'

    get 'dojos/:dojo_id/students' => 'dojo#index'

    get 'students/show'

    get 'students/new'

    get 'students/edit'

    root 'dojos#index'

    get 'dojos/index'

    get 'dojos/new' => 'dojos#new'

    get 'dojos/edit'

    post 'create' => 'dojos#create'

    get 'dojos/:id' => 'dojos#show'

    get 'dojos/:id/edit' => 'dojos#edit'

    patch 'dojos/:id' => 'dojos#update'

    delete 'dojos/:id' => 'dojos#destroy'

    get 'dojos/:id/students/new' => 'students#new'

    post 'dojos/:id/students' => 'students#create'

    get 'dojos/:id/students/:sid' => 'students#show'

    delete 'dojos/:id/students/:sid' => 'students#destroy'

    get 'dojos/:id/students/:sid/edit' => 'students#edit'

    patch 'dojos/:id/students/:id' => 'students#update'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
