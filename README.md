# Devise Access Token Authenticatable

A devise module that provides something a little more full featured than token
authenticatable.

## Installation

Add this line to your application's Gemfile:

    gem 'devise-access_token_authenticatable'

## Assumptions

You have an `AccessToken` model that responds to the following methods:

* `invalidate!`: Invalidates the token, making it unusable for authentication.
* `fresh?`: Whether or not the token can be used to authenticate the user.
* `used!`: Called whenever the token is used.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
