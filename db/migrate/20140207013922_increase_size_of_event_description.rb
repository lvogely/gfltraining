class IncreaseSizeOfEventDescription < ActiveRecord::Migration
  def change
  	change_column :training_classes, :event_description, :text
  end
end
