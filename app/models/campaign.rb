class Campaign < ActiveRecord::Base
  
  def popular?
    true
  end
  
  def self.contains string
    arr = Campaign.select { |c|
      c.title.include? string
    }
    puts '------------------'
    puts "campaigns found: #{arr.inspect}"
    puts '------------------'
    arr
  end
end
