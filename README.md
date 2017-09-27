# Videojs::Ng

Video.js is an open source library for working with video on the web, also known as an HTML video player.

This gem bundles the upstream distribution for use with the Ruby on Rails framework. The version number of
the gem always tracks the upstream javascript release and the gem itself doesn't provide any additional
methods or helpers. If a need for helpers arises in the future they will be developed as a separate gem
with this one as its dependency. Should a gem bug be discovered an additional version identifier will be
appended and incremented after the upstream version number.

The gem is developed and tested against Rails 5

## License
videojs-ng and changes made to videojs required for rails are licensed under ISC.

The original videojs code distributed with this gem is licensed under [Apache 2](https://tldrlegal.com/license/apache-license-2.0-%28apache-2.0%29)
You can find the videojs license file in the vendor directory, changes made to the original code base are as follows:

 - added `video-lang.js` to optionally load all existing language files
 - for consistency with other includes the following renames have been done
   - `videojs-ie8.js` to `video-ie8.js`
   - `video.novtt.js` to `video-novtt.js`
   - `video-js.css` to `video.css.erb`
   - `video-js-cdn.css` to `video-cdn.css`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'videojs-ng'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install videojs-ng

## Usage

### CSS

#### self serving assets (recommended)

include the stylesheet in application.css file:

    *= require video

and be sure to include the static assets in `config/initializers/assets.rb`

```ruby
Rails.application.config.assets.precompile += %w( VideoJS.eot VideoJS.svg VideoJS.ttf VideoJS.woff )
```

#### using CDN for fonts

	*= require video-cdn

### Player variants

#### default player (recommended)

Add the following directive to your JavaScript manifest file (application.js):

    //= require video

#### without Mozilla vtt.js 

By default videojs ships with Apache 2 licensed vtt.js use the novtt include
in application.js if you want to avoid it:

	//= require video-novtt

#### IE8 support

if you happen to need ie8 support include (application.js):

    //= require video-ie8


### Languages

Video.js includes localization support to present text in a language other than the default English where appropriate.

You can add the language you need to support by requiring it in your application.js:

    //= require video-lang/es

If you want to load all existing supported languages require just video-lang in application.js:

    //= require video-lang

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/koparo/videojs-ng.
