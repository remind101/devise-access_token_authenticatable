require 'devise/strategies/token_authenticatable'

module Devise
  module Strategies
    class AccessTokenAuthenticatable < TokenAuthenticatable
      def authenticate!
        resource, token = mapping.to.find_for_access_token_authentication(authentication_hash)
        return fail(:invalid_token) unless resource

        if validate(resource)
          resource.after_token_authentication(token)
          success!(resource)
        end
      end
    end
  end
end

Warden::Strategies.add(:access_token_authenticatable, Devise::Strategies::AccessTokenAuthenticatable)
