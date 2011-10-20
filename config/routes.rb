Societalcampaigns::Application.routes.draw do
  
  match 'propose' => 'static#propose'
  match 'live_search' => 'static#live_search'
  match 'browse' => 'campaigns#index'
  match 'up' => 'campaigns#up'
  
  resources :campaigns
  
  root :to => 'static#index'
end