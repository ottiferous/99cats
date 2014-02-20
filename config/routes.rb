Rentcats::Application.routes.draw do
  root to: 'cats#index'

  resources :cats do
    resources :cat_rental_requests
  end

  post '/cats/:cat_id/cat_rental_requests/:id', to: 'cat_rental_requests#approve', as: 'approve'
  post '/cats/:cat_id/cat_rental_requests/:id', to: 'cat_rental_requests#deny', as: 'deny'

end
