# rome-rails

rome-rails wraps the
[Rome](https://bevacqua.github.io/rome/)
([GitHub](https://github.com/bevacqua/rome))
javascript library for use in a Ruby on Rails project.

Rome is a customizable date (and time) picker.

Rome depends on [`moment`](http://momentjs.com/),
which is bundled by default.
If you're already using `moment`,
you can use a version of Rome that doesn't bundle `moment`.

It doesn't depend on jQuery or other frameworks, though.

## Usage

Add the following to your `Gemfile`:

    gem "rome-rails"


#### Bundled version (includes `moment`)

Rome rails includes a bundled version of `moment.js`.

Add the following directive to your Javascript manifest file (`application.js`):

    //= require rome


#### Standalone version (uses existing `moment`)

If you're already using `moment`,
(perhaps with the
[`momentjs-rails` gem](https://github.com/derekprior/momentjs-rails)?)
you can included a standalone version of Rome.

Just make sure you require `moment` **before** `rome-standalone`
in your Javascript manifest file (`application.js`).

    //= require moment
    //= require rome.standalone


#### Stylesheets

Add the following directive to your Stylesheets manifest file (`application.css`):

    //= require rome

If you're using `sass-rails`, and your manifest file is `application.**scss**`,
then [you should use Sass's style `@import` functions](https://github.com/rails/sass-rails#important-note)

    @import "rome";
    
### Creating a calendar

Once you have the files required, 
write some javascript (likely in a new file) to create a calendar.

Follow [the examples from the `rome` homepage](http://bevacqua.github.io/rome/). 

Remember: `rome` doesn't require jQuery, so it takes a native DOM element, not a jQuery element.

## Versioning

The version of this gem will match the version of the underlying
[Rome](https://github.com/bevacqua/rome) library.

## Development

After checking out the repo, run `bundle` to install dependencies.
Then, run `rake spec` to run the tests.

## Contributing

Bug reports, pull requests, support queries are welcome
on GitHub at https://github.com/cllns/rome-rails.
This project actively pursues maintaining a safe,
welcoming space for collaboration,
and contributors are expected to adhere to the
[Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
