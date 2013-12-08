# Privy

Allows simple private method execution (useful for metaprogramming).

## Installation

Add this line to your application's Gemfile:

    gem 'privy'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install privy

## Usage

```ruby
require 'privy'

String.privy!.define_method(:apple) do |*args|
  "New method."
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
