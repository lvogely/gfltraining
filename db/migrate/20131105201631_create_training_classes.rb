class CreateTrainingClasses < ActiveRecord::Migration
  def change
    create_table :training_classes do |t|
      
      t.belongs_to :class_type

      t.string :title
      t.timestamp :starts_at
      t.timestamp :ends_at
      t.string :eventbrite_id
      t.string :eventbrite_url
      t.string :event_street
	  t.text :event_description
	  t.string :event_state
	  t.string :event_city
	  t.string :event_zip
	  t.decimal :event_lat, precision: 10, scale: 8
	  t.decimal :event_long, precision: 11, scale: 8
      t.timestamps
    end
  end
end
