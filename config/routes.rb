Rails.application.routes.draw do
  get 'fridges/create'
  get 'fridges/destroy'
  get 'fridges/index'
  get 'fridges/show'
  get 'fridges/new'
  get 'fridges/edit'
  resources  :fridges do
    resources :foods
    resources :drinks
  end
end
