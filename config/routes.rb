Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    member do
      get 'tweets' => 'tweets#show_for_user'
      post 'tweets' => 'tweets#create'
  end
end

end
