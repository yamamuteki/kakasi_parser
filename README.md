# KakasiParser [![Gem Version](https://badge.fury.io/rb/kakasi_parser.svg)](https://badge.fury.io/rb/kakasi_parser) [![Build Status](https://travis-ci.org/yamamuteki/kakasi_parser.svg?branch=master)](https://travis-ci.org/yamamuteki/kakasi_parser) [![Coverage Status](https://coveralls.io/repos/github/yamamuteki/kakasi_parser/badge.svg?branch=master)](https://coveralls.io/github/yamamuteki/kakasi_parser?branch=master) [![Code Climate](https://codeclimate.com/github/yamamuteki/kakasi_parser/badges/gpa.svg)](https://codeclimate.com/github/yamamuteki/kakasi_parser)

Return all readings as array from result string of Kakasi with -p option.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kakasi_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kakasi_parser

## Usage

```ruby
require 'kakasi'
require 'kakasi_parser'

result = Kakasi.kakasi('-Ja -p', '山崎聡')
# => "{yamazaki|yamasaki}{satoshi|sato|sou|akira|satoru}"

KakasiParser.parse(result)
# => ["yamazakisatoshi", "yamazakisato", "yamazakisou", "yamazakiakira", "yamazakisatoru", "yamasakisatoshi", "yamasakisato", "yamasakisou", "yamasakiakira", "yamasakisatoru"]
```

Same:

```ruby
require 'kakasi_parser'

KakasiParser.kakasi('-Ja -p', '山崎聡')
# => ["yamazakisatoshi", "yamazakisato", "yamazakisou", "yamazakiakira", "yamazakisatoru", "yamasakisatoshi", "yamasakisato", "yamasakisou", "yamasakiakira", "yamasakisatoru"]
```
## Links

- [KAKASI - Kanji Kana Simple Inverter](http://kakasi.namazu.org/index.html.en)
- [A Ruby binding for KAKASI implemented with FFI](https://github.com/knu/kakasi_ffi)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/yamamuteki/kakasi_parser.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

