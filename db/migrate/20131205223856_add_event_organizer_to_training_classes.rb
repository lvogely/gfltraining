class AddEventOrganizerToTrainingClasses < ActiveRecord::Migration
  def change
    add_column :training_classes, :event_organizer, :string
  end
end
