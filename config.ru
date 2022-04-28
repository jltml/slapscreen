# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server
Launchy.open("http://127.0.0.1:3000") if Rails.env.development? && ENV["OPEN_SLAPSCREEN"]
