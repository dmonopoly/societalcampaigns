class AddUpCountToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :up_count, :integer, :default => 0
  end
end
