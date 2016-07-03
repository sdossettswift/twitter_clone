Rails.application.routes.draw do
   root 'post#index' #root_path
   get 'post/new' => 'post#new', as: :new_post

   # create a post
   get 'post/:id' => 'post#detail', as: :post
   post 'posts' => 'post#create'

   # update a post
   # show the form
   get 'post/:id/edit' => 'post#edit', as: :edit_post
   # patch the form
   patch 'post/:id' => 'post#update', as: :update_post
   delete 'post/:id' => 'post#delete', as: :delete_post

  get 'post/:id/detail' =>'post#show', as: :show_post


  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete', as: :sign_out

  get 'register' => 'user#new', as: :new_user
  post 'register' => 'user#create', as: :create_user

  get 'users' => 'user#index', as: :users
  get 'entourage' => 'user#following', as: :following
  post 'follow/:user_id' => 'user#follow', as: :follow
  post 'unfollow/:user_id' => 'user#unfollow', as: :unfollow

end
