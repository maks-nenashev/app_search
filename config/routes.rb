Rails.application.routes.draw do
     # Authorization
   devise_for :users
  
   devise_scope :user do  
      get '/users/sign_out' => 'devise/sessions#destroy'     
   end
 #/////////////////////////////////////////////////////////////////////////// 
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
