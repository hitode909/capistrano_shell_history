# capistrano_shell_history

Capistrano plugin that provides the command history feature for Capistrano Shell.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano_shell_history', :require => false
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install capistrano_shell_history
```

## Usage

Add this line to your application's Capfile.

```ruby
require 'capistrano_shell_history'
```

Or create `~/.caprc` with the following

```ruby
require 'capistrano_shell_history'
```

The history will be stored in `.cap_shell_hisotory` in your home directory.

You can configure history file by setting `:shell_history` variable.

```ruby
set :shell_history, File.expand_path('~/the_new_history_file')
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
