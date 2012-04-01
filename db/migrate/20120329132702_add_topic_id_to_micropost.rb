class AddTopicIdToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :topic_id, :number

  end
end
