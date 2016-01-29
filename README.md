
# Mandrill DM

[![Build Status](https://travis-ci.org/spovich/mandrill_dm.svg?branch=master)](https://travis-ci.org/spovich/mandrill_dm)
[![Gem Version](https://badge.fury.io/rb/mandrill_dm.svg)](http://badge.fury.io/rb/mandrill_dm)
[![security](https://hakiri.io/github/spovich/mandrill_dm/master.svg)](https://hakiri.io/github/spovich/mandrill_dm/master)

Mandrill DM allows you to use ActionMailer with the Mandrill API. Created by [Jonathan Berglund](https://github.com/jlberglund)
and maintained by [John Dell](https://github.com/spovich), and [Kirill Shnurov](https://github.com/kshnurov) and various [contributors](https://github.com/spovich/mandrill_dm/graphs/contributors).

## Rails Setup

First, add the gem to your Gemfile and run the `bundle` command to install it.

```ruby
gem 'mandrill_dm'
```

Second, set the delivery method in `config/environments/production.rb`.

```ruby
config.action_mailer.delivery_method = :mandrill
```

Third, create an initializer such as `config/initializers/mandrill.rb` and paste in the following code:

```ruby
MandrillDm.configure do |config|
  config.api_key = ENV['MANDRILL_APIKEY']
  # config.async = false
end
```

NOTE: If you don't already have an environment variable for your Mandrill API key, don't forget to create one.

### Available configuration options

Option     | Default value     | Description
-----------|-------------------|------------------------------------------------------------
`api_key`  |                   | Mandrill API key.
`async`    | `false`           | Enable a background sending mode that is optimized for bulk sending.

### Mandrill Templates

If you want to use this gem with mandrill templates you just have to add the `template` param to the `mail` function.

```ruby
class MyMailer < ActionMailer::Base
  def notify_user(email)
    mail(
      to: email,
      from: 'your@email.com',
      template: 'your-mandrill-template-slug',
      template_content: [ # optional
        {
          name: 'header',
          content: 'string to replace a *|header|* in your template', 
        },
        {
          name: 'content',
          content: 'string to replace a *|content|* in your template'
        }
      ]
    )
  end
end
```

## Development & Feedback

Questions or problems? Please use the issue tracker. If you would like to contribute to this project, fork this repository. Pull requests appreciated.

This gem was inspired by the [letter_opener](https://github.com/ryanb/letter_opener/) and [mandrill-delivery-handler](https://github.com/earnold/mandrill-delivery-handler) gems. Special thanks to the folks at MailChimp and Mandrill for their Starter service and [Ruby API](https://bitbucket.org/mailchimp/mandrill-api-ruby).
