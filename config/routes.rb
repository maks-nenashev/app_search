Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  
  get '/' =>'home#index' 
  

  resources :senses do
       resources :comments 
     end 
  
  resources :things do
       resources :comments 
     end 
  
  resources :articles do
       resources :comments 
     end  

end
