json.array!(@training_classes) do |training_class|
  json.extract! training_class, 
  json.url training_class_url(training_class, format: :json)
end
