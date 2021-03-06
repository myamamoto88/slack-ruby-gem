# This file was auto-generated by lib/generators/tasks/generate.rb

module Slack
  module Endpoint
    module FilesComments
      #
      # Add a comment to an existing file.
      #
      # @option options [Object] :file
      #   File to add a comment to.
      # @option options [Object] :comment
      #   Text of the comment to add.
      # @option options [Object] :channel
      #   Channel id (encoded) of which location to associate with the new comment.
      # @see https://api.slack.com/methods/files_comments.add
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/files_comments.add.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/files_comments.add.json
      def files_comments_add(options={})
        throw ArgumentError.new("Required arguments :file missing") if options[:file].nil?
        throw ArgumentError.new("Required arguments :comment missing") if options[:comment].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("files.comments.add", options)
      end

      #
      # Delete an existing comment on a file. Only the original author of the comment or a Team Administrator may delete a file comment.
      #
      # @option options [Object] :file
      #   File to delete a comment from.
      # @option options [Object] :id
      #   The comment to delete.
      # @see https://api.slack.com/methods/files_comments.delete
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/files_comments.delete.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/files_comments.delete.json
      def files_comments_delete(options={})
        throw ArgumentError.new("Required arguments :file missing") if options[:file].nil?
        throw ArgumentError.new("Required arguments :id missing") if options[:id].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("files.comments.delete", options)
      end

      #
      # Edit an existing comment on a file. Only the user who created a comment may make edits. Teams may configure a limited time window during which file comment edits are allowed.
      #
      # @option options [Object] :file
      #   File containing the comment to edit.
      # @option options [Object] :id
      #   The comment to edit.
      # @option options [Object] :comment
      #   Text of the comment to edit.
      # @see https://api.slack.com/methods/files_comments.edit
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/files_comments.edit.md
      # @see https://github.com/aki017/slack-api-docs/blob/master/methods/files_comments.edit.json
      def files_comments_edit(options={})
        throw ArgumentError.new("Required arguments :file missing") if options[:file].nil?
        throw ArgumentError.new("Required arguments :id missing") if options[:id].nil?
        throw ArgumentError.new("Required arguments :comment missing") if options[:comment].nil?
        options[:attachments] = options[:attachments].to_json if Hash === options[:attachments]
        post("files.comments.edit", options)
      end

    end
  end
end
