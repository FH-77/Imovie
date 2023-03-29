Rails.application.routes.draw do


  devise_for :user,skip: [:passwords], controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
}
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

  namespace :admin do
    root "homes#top"
    resources :users,only:[:index,:show,:destroy]
    resources :review,only:[:index,:show,:destroy]
    resources :user_review,only:[:index]
  end

  scope module: :user do
    root "homes#top"
    get '/about' => "homes#about" ,as: "about"
    get '/users' => "users#show"
    get '/users/information/edit' => "users#edit"
    patch '/users' => "users#update"
    get '/movies/serch' => "movies#serch"
    resources :movies,only:[:show]
    resources :reviews,only:[:new,:show,:edit,:index,:create,:destroy]
    resources :comment,only:[:new,:create,:destroy]
    resources :other_users,only:[:show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
