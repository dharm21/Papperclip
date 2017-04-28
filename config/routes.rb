Rails.application.routes.draw do
   root 'welcomes#index'
   resources :posts
end
