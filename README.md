# Rake::RoboFont

A collection of tasks for building RoboFont-related things.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rake-robofont', github: "ghostlines/rake-robofont"
```

And then execute:

    $ bundle

## Usage

The only task current available is for building an extension from a source directory:

```ruby
require 'rake/robofont'

include Rake::RoboFont

Extension::BuildTask.new :build, "src" => "Ghostlines"

task default: :build
```

This will provide tasks for building, installing, and uninstalling an extension. Run `rake -T` to see all defined tasks.

### `Extension::BuildTask`

This task will copy all of the pertinent files from a source directory into a `roboFontExt`, with some knowledge about what to expect in the handful of directories present in a RoboFont extension.

Currently this copy action will exclude any `pyc` files in the `lib` directory.

All files will be copied from the `Resources` and `html` directories.

If a file named `_startup.py` is present in the root of the `lib` directory, the extension will be configured to run this script when RoboFont launches.

Any other files in the root of `lib` are assumed to be files that should have corresponding entries in the dropdown menu for the extension, and these will be automatically configured. The name of the menu item will be derived from the file name. It is also possible to assign a hotkey to the menu item by affixing a single uppercase letter to the end of the file name. E.g. the file `account_A.py` will create an `Account` menu item with `shift + option + cmnd + A`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rake-robofont. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
