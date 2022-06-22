Rails.application.routes.draw do
  resources :users, except:[:index, :destroy] 
  resources :user_sessions, only: [:new, :create] do
    collection do
      delete :destroy
    end
  end
  root 'user_sessions#new'
end
