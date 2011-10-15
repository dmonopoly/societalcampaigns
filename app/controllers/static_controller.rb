class StaticController < ApplicationController
  # home page, with a single minimalist form
  def index
  end
  
  def search
    redirect_to '/browse'
  end
end
