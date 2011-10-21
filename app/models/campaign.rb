class Campaign < ActiveRecord::Base
  has_many :links
  
  default_scope :order => 'up_count DESC'
  
  def popular?
    true
  end
  
  def self.contains string # change to self.all_that_contain
    arr = Campaign.select { |c|
      c.title.include? string
    }
    arr
  end
end
