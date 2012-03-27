collection @measurements

extends "measurements/show"

node(:url) { |measurement| measurement_url(measurement.to_param, format: request.format.to_sym) }
