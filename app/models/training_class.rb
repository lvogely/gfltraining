class TrainingClass < ActiveRecord::Base

	def self.import
		response = $eb_client.user_list_events(event_statuses: "live")
		response["events"].each do |event|
			e = event["event"]
			create!(
				title: e["title"],
				eventbrite_id: e["id"]
				)
		end
	end

end