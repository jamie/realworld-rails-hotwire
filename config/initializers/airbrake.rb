require "airbrake-ruby"

Airbrake.configure do |c|
  c.project_id = 439210
  c.project_key = ENV["AIRBRAKE_PROJECT_KEY"]
end
