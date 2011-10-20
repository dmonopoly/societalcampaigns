class CampaignsController < ApplicationController
  def index
    @popular_campaigns = Campaign.all.select { |c| c.popular? }
  end
  
  def new
    @campaign = Campaign.new
  end
  
  def create
    @campaign = Campaign.new(params[:campaign])

    respond_to do |format|
      if @campaign.save
        # flash[:notice] = 'Campaign created.'
        format.html { redirect_to @campaign }
      else
        format.html { render :action => "new" }
      end
    end
  end
  
  def show
    @campaign = Campaign.find(params[:id])
  end
  
  def edit
    @campaign = Campaign.find(params[:id])
  end
  
  # untested
  def update
    @campaign = Campaign.find(params[:id])

    respond_to do |format|
      if @campaign.update_attributes(params[:campaign])
        # flash[:notice] = 'Campaign updated.'
        format.html { redirect_to @campaign }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  
end
