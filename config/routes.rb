Societalcampaigns::Application.routes.draw do
  
  match 'browse' => 'campaigns#index'
  match 'search' => 'static#search'
  resources :campaigns
  
  root :to => 'static#index'
end