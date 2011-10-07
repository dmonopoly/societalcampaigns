Societalcampaigns::Application.routes.draw do
  
  resources :campaigns
  
  root :to => 'campaigns#index'
end