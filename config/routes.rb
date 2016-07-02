Rails.application.routes.draw do
   root 'post#index' #root_path
   get 'post/new' => 'post#new', as: :new_post

   # create a post
   get 'post/:id' => 'post#detail', as: :post
   post 'posts' => 'post#create'

   # update a post
   # show the form
   get 'post/:id/edit' => 'post#edit', as: :edit_path
   # patch the form
   patch 'post/:id' => 'post#update', as: :update_path
   delete 'post/:id' => 'post#delete', as: :delete_path

   get 'post/:id/detail' =>'post#show', as: :show_post_path
end
