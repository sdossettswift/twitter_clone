Rails.application.routes.draw do
   root 'posts#index' #root_path
   get 'users/timeline' => 'users#timeline', as: :timeline

   get 'post/new' => 'posts#new', as: :new_post

   # create a post
   get 'post/:id' => 'posts#detail', as: :post
   post 'posts' => 'posts#create'

   # update a post
   # show the form
   get 'posts/:id/edit' => 'posts#edit', as: :edit_post
   # patch the form
   patch 'posts/:id' => 'posts#update', as: :update_post
   delete 'posts/:id' => 'posts#delete', as: :delete_post

  get 'posts/:id/detail' =>'posts#show', as: :show_post


  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_out' => 'sessions#delete', as: :end_session
  get 'sign_out' => 'sessions#delete', as: :sign_out

  get 'register' => 'users#new', as: :new_user
  post 'register' => 'users#create', as: :create_user

  get 'users/:user_id' => 'users#profile', as: :profile
  get 'users' => 'users#index', as: :users
  get 'entourage' => 'users#following', as: :following
  post 'follow/:user_id' => 'users#follow', as: :follow
  post 'unfollow/:user_id' => 'users#unfollow', as: :unfollow



  get 'posts' => 'posts#index'
end
