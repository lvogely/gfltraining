class TrainingClass < ActiveRecord::Base

	def self.import
		ids = pluck(:id)
		response = $eb_client.user_list_events(event_statuses: "live")
		response["events"].each do |event|
			e = event["event"]
			tc = find_or_initialize_by eventbrite_id: e["id"].to_s
			tc.update_attributes!(
				title: e["title"],
				eventbrite_url: e["url"],
				event_street: e["street"],
				event_state: e["state"],
				event_city: e["city"],
				event_zip: e["zip"],
				event_description: e["description"],
				event_lat: e["lat"],
				event_long: e["long"],
				starts_at: e["start"],
				ends_at: e["end"]
				)
			ids.delete tc.id
		end
		delete_all(id: ids)
	end

end