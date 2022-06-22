Rails.application.routes.draw do
  resources :books do
    collection do
      get :own
    end
  end
  resources :users, except:[:index, :destroy] 
  resources :user_sessions, only: [:new, :create] do
    collection do
      delete :destroy
    end
  end
  root 'books#index'
end
