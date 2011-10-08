Societalcampaigns::Application.routes.draw do
  
  match 'browse' => 'campaigns#index'
  
  resources :campaigns
  
  root :to => 'campaigns#index'
end