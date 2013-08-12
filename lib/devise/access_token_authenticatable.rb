require 'devise'

require 'devise/access_token_authenticatable/version'
require 'devise/models/access_token_authenticatable'
require 'devise/strategies/access_token_authenticatable'

Devise.add_module :access_token_authenticatable,
  controller: :sessions, route: { :session => [nil, :new, :destroy] },
  no_input: true, model: true, strategy: true
