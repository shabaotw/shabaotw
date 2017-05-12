[![Gem Version](https://img.shields.io/gem/v/capistrano-rails-console.svg)](https://rubygems.org/gems/capistrano-rails-console)
[![Dependencies](https://img.shields.io/gemnasium/ydkn/capistrano-rails-console.svg)](https://gemnasium.com/ydkn/capistrano-rails-console)
[![Code Climate](https://img.shields.io/codeclimate/github/ydkn/capistrano-rails-console.svg)](https://codeclimate.com/github/ydkn/capistrano-rails-console)

[![Join the chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/ydkn/capistrano-rails-console)


# Capistrano::Rails::Console

Remote rails console and dbconsole for capistrano.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano-rails-console', require: false
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-rails-console


## Usage

Require in `Capfile` to use the default task:

```ruby
require 'capistrano/rails/console'
```

Run a remote rails console with:

    $ cap production rails:console

You can also start a sandbox session:

    $ cap production rails:console sandbox=1

Or run a dbconsole:

    $ cap production rails:dbconsole

## Options

### Rails environment

```ruby
set :console_env, :production # use different environment than deployment environment (rails_env)
```

### User

```ruby
set :console_user, :appuser # run rails console as appuser through sudo
set :console_user, nil # explicitly disable switching user through sudo
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ydkn/capistrano-rails-console.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
