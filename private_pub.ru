require "bundler/setup"
require "yaml"
require "faye"
require "private_pub"

Faye::WebSocket.load_adapter(ENV['FAYE_ADAPTER'] || 'rainbows')

PrivatePub.load_config(File.expand_path("../config/private_pub.yml", __FILE__), ENV["RAILS_ENV"] || "development")
run PrivatePub.faye_app
