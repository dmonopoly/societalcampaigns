class Campaign < ActiveRecord::Base
  
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
