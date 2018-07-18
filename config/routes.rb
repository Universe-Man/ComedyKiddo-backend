Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only:[:index, :create, :update, :delete, :show]
      resources :teams, only:[:index, :create, :update, :delete, :show]
      resources :shows, only:[:index, :create, :update, :delete, :show]
      resources :notes, only:[:index, :create, :update, :delete, :show]
      # CURRENTLY COMMENTING OUT PRACTICES ROUTES
      # resources :practices, only:[:index, :create, :update, :delete, :show]
      # namespace :api do
      #   namespace :v1 do
      # get 'teams/index'
      # get 'teams/create'
      # get 'teams/update'
      # get 'teams/delete'
      # get 'teams/show'
      # get 'practices/index'
  #     get 'practices/create'
  #     get 'practices/update'
  #     get 'practices/delete'
  #     get 'practices/show'
  #   end
  # end
  # namespace :api do
  #   namespace :v1 do
  #     get 'shows/index'
  #     get 'shows/create'
  #     get 'shows/update'
  #     get 'shows/delete'
  #     get 'shows/show'
  #   end
  # end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
