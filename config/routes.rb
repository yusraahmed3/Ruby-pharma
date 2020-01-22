Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :product
  # get 'product/list'
  # get 'product/new'
  # post 'product/create'
  # patch 'product/update'
  # get 'product/list'
  # get 'product/show'
  # get 'product/edit'
  # get 'product/delete'
  # get 'product/update'
  get 'product/home'
  get 'product/new'
  get 'product/create'
  get 'product/edit'
end
