require 'dotenv'
Dotenv.load
require "slack-notify"
require 'clockwork'
# require 'active_support/time'

sample = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK_URL'])

module Clockwork
  handler do |job|
    sample = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK_URL'])
    sample.notify("3分経ちました")
  end
  every(3.minutes, 'frequent.job')
end




