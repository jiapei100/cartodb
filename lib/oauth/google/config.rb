require_dependency 'oauth/client'

module Oauth
  module Google
    class Config < Oauth::Config
      def self.config
        CartodbCentral.get_config(:oauth, 'google_plus') || {}
      end

      def auth_url
        'https://accounts.google.com/o/oauth2/auth'.freeze
      end

      def token_url
        'https://www.googleapis.com/oauth2/v3/token'.freeze
      end

      def scopes
        ['email', 'profile'].freeze
      end

      def button_template
        'google_plus/google_plus_button'
      end

      def valid_method_for?(user)
        user.organization.nil? || user.organization.auth_google_enabled
      end
    end
  end
end
