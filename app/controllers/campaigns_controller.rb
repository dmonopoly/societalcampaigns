class CampaignsController < ApplicationController
  def index
    @popular_campaigns = Campaign.all.select { |c| c.popular? }
  end
  
  def new
    @campaign = Campaign.new
  end
  
  def create
  end
  
  def show
    @campaign = Campaign.find(params[:id])
  end
  
  def edit
    @campaign = Campaign.find(params[:id])
  end
  
  def update
  end
  
  
end
