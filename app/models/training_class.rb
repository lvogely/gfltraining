class TrainingClass < ActiveRecord::Base

	def self.import
		response = $eb_client.user_list_events(event_statuses: "live")
		response["events"].each do |event|
			e = event["event"]
			create!(
				title: e["title"],
				eventbrite_id: e["id"],
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
		end
	end

end