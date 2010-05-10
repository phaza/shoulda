require 'shoulda/active_model/helpers'
module Shoulda # :nodoc:
  module ActiveRecord # :nodoc:
    module Helpers
      include Shoulda::ActiveModel::Helpers
      def pretty_error_messages(obj) # :nodoc:
        obj.errors.map do |a, m|
          msg = "#{a} #{m}"
          msg << " (#{obj.send(a).inspect})" unless a.to_sym == :base
        end
      end
<<<<<<< HEAD

      # Helper method that determines the default error message used by Active
      # Record.
      #
      #   default_error_message(:blank)
      #   default_error_message(:too_short, :count => 5)
      #   default_error_message(:too_long, :count => 60)
      def default_error_message(key, values = {})
        I18n.translate!("activerecord.errors.messages.#{key}", values)
      rescue I18n::MissingTranslationData
        I18n.translate!("errors.messages.#{key}", values)
      end
=======
>>>>>>> da0b779... Rails3 / ActiveModel:
    end
  end
end
