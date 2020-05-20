require "slack-notify"

# class TestBot < SlackRubyBot::Bot
#   command 'ping' do |client, data, match|
#     client.say(text: 'pong', channel: data.channel)
#   end
# end

# PongBot.run


client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")

client = SlackNotify::Client.new(
  webhook_url: "https://hooks.slack.com/services/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",
  channel: "#development",
  username: "testbot",
  icon_url: "http://mydomain.com/myimage.png",
  icon_emoji: ":shipit:",
  link_names: 1
)