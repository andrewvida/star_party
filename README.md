# StarParty ⭐️🎉

Use StarParty to find products at your favorite store.

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/star_party`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'star_party'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install star_party

## Usage

```
$ gem install star_party
```

then:

``` ruby
price = StarParty.search(:macys, "123456")
```

## What

[I](https://twitter.com/andrewvida) wrote this because I wanted a quicker way to search for product prices from my favorite retailers instead of opening up a browser, trying searching for the item, and then finding the price on the page.

(Thanks to [@searls](http://twitter.com/searls) and his [FineAnts](http://github.com/searls/fineants) gem for the inspiration! 😀) 

# Adapters

Right now, StarParty ships with adapters for:

| Name                        | Adapter Name      |
| --------------------------- | ----------------- |
| [Macy's](https://macys.com) | `:macys`          |

You can also implement your own adapter and pass it to `StarParty.search`.  The expected public contract of an adapter is:

``` ruby
class MyAdapter
  include Capybara::DSL

  def visit_site
    # visit the url of the site
  end

  def search_for(search_item)
   # fill in the search field with the search_item
   # and click a search button
   # after finding it, return the price
  end
end
```

You can pass your own adapter class:

``` ruby
price = StarParty.search(MyAdapter, "search item")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`.
