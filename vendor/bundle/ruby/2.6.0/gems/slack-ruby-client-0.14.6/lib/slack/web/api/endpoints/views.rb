# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Views
          #
          # Open a view for a user.
          #
          # @option options [Object] :trigger_id
          #   Exchange a trigger to post to the user.
          # @option options [Object] :view
          #   A view payload. This must be a JSON-encoded string.
          # @see https://api.slack.com/methods/views.open
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/views/views.open.json
          def views_open(options = {})
            throw ArgumentError.new('Required arguments :trigger_id missing') if options[:trigger_id].nil?
            throw ArgumentError.new('Required arguments :view missing') if options[:view].nil?
            if options.key?(:view)
              view = options[:view]
              view = JSON.dump(view) unless view.is_a?(String)
              options = options.merge(view: view)
            end
            post('views.open', options)
          end

          #
          # Publish a static view for a User.
          #
          # @option options [Object] :user_id
          #   id of the user you want publish a view to.
          # @option options [Object] :view
          #   A view payload. This must be a JSON-encoded string.
          # @option options [Object] :hash
          #   A string that represents view state to protect against possible race conditions.
          # @see https://api.slack.com/methods/views.publish
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/views/views.publish.json
          def views_publish(options = {})
            throw ArgumentError.new('Required arguments :user_id missing') if options[:user_id].nil?
            throw ArgumentError.new('Required arguments :view missing') if options[:view].nil?
            if options.key?(:view)
              view = options[:view]
              view = JSON.dump(view) unless view.is_a?(String)
              options = options.merge(view: view)
            end
            post('views.publish', options)
          end

          #
          # Push a view onto the stack of a root view.
          #
          # @option options [Object] :trigger_id
          #   Exchange a trigger to post to the user.
          # @option options [Object] :view
          #   A view payload. This must be a JSON-encoded string.
          # @see https://api.slack.com/methods/views.push
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/views/views.push.json
          def views_push(options = {})
            throw ArgumentError.new('Required arguments :trigger_id missing') if options[:trigger_id].nil?
            throw ArgumentError.new('Required arguments :view missing') if options[:view].nil?
            if options.key?(:view)
              view = options[:view]
              view = JSON.dump(view) unless view.is_a?(String)
              options = options.merge(view: view)
            end
            post('views.push', options)
          end

          #
          # Update an existing view.
          #
          # @option options [Object] :view
          #   A view payload This must be a JSON-encoded string.
          # @option options [Object] :external_id
          #   A unique identifier of the view set by the developer. Must be unique for all views on a team. Max length of 255 characters. Either view_id or external_id is required.
          # @option options [Object] :hash
          #   A string that represents view state to protect against possible race conditions.
          # @option options [Object] :view_id
          #   A unique identifier of the view to be updated. Either view_id or external_id is required.
          # @see https://api.slack.com/methods/views.update
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/views/views.update.json
          def views_update(options = {})
            throw ArgumentError.new('Required arguments :view missing') if options[:view].nil?
            if options.key?(:view)
              view = options[:view]
              view = JSON.dump(view) unless view.is_a?(String)
              options = options.merge(view: view)
            end
            post('views.update', options)
          end
        end
      end
    end
  end
end
