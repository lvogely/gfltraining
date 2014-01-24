class AddOrganizerUrlTrainingClasses < ActiveRecord::Migration
  def change
    add_column :training_classes, :event_organizer_url, :string
  end
end
