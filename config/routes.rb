Rails.application.routes.draw do
  root to: "homes#index"
  resources :houseworks do
   collection do
    get 'search'
   end
  end
end
