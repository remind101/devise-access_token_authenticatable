require 'devise/strategies/access_token_authenticatable'

module Devise
  module Models
    module AccessTokenAuthenticatable
      extend ActiveSupport::Concern

      def invalidate_authentication_token!
        access_token.invalidate! if access_token
      end

      # TODO Remove this entirely. A user should be able to have many access
      # tokens, that should expire after a period of time.
      def reset_authentication_token!
        invalidate_authentication_token!
        self.access_token = access_tokens.create!
        save(:validate => false)
      end

      def authentication_token
        access_token.try(:token)
      end

      def after_token_authentication(token)
        token.used!
      end

      module ClassMethods
        def find_for_access_token_authentication(conditions)
          # TODO Use to_adapter here.
          token = AccessToken.where(token: conditions[token_authentication_key]).first
          [token.user, token] if token.try(:fresh?)
        end

        Devise::Models.config(self, :token_authentication_key)
      end
    end
  end
end
