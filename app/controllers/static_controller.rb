class StaticController < ApplicationController
  # home page, with a single minimalist form
  def index
  end
  
  # This renders the new action with the proposed campaign
  def propose
    @campaign = Campaign.new(:title => params[:textfield])
    render 'campaigns/new'
  end
  
  # Based on the proposal, JS is used to live search
  def live_search
    # @campaigns = Campaign.find_latest params[:textfield]
    @campaigns = Campaign.contains(params[:textfield])
    render :layout => false
  end
end
