Rails.application.routes.draw do
  root    'static_pages#home'
  get     '/help',    to: 'static_pages#help'
  get     '/about',   to: 'static_pages#about'
  get     '/contact', to: 'static_pages#contact'
  get     '/signup',  to: 'users#new'
  # This line appears to be deleted in Listing 8.2, however it seems like
  # it is absolutely required for tests to pass.
  # vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv #
#  post    '/signup',  to: 'users#create'
  # ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ #
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
  resources :users
end
