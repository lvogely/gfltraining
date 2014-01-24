class TrainingClass < ActiveRecord::Base

	paginates_per 10

	def self.import
		ids = pluck(:id)
		response = $eb_client.user_list_events(event_statuses: "live")
		response["events"].each do |event|
			e = event["event"]
			tc = find_or_initialize_by eventbrite_id: e["id"].to_s
			tc.update_attributes!(
				title: e["title"],
				eventbrite_url: e["url"],
				event_street: e["venue"]["address"],
				event_state: e["venue"]["region"],
				event_city: e["venue"]["city"],
				event_zip: e["venue"]["zip"],
				event_description: e["description"],
				event_organizer: e["organizer"]["name"],
				event_organizer_url: e["organizer"]["url"],
				event_lat: e["venue"]["latitude"],
				event_long: e["venue"]["longitude"],
				starts_at: e["start_date"],
				ends_at: e["end_date"]
				)
			ids.delete tc.id
		end
		delete_all(id: ids)
	end

	def month
  		self.starts_at.strftime('%m')
	end

end