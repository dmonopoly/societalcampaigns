Societalcampaigns::Application.routes.draw do
  
  match 'propose' => 'static#propose'
  match 'live_search' => 'static#live_search'
  match 'browse' => 'campaigns#index'
  
  resources :campaigns
  
  root :to => 'static#index'
end