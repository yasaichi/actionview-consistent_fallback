# actionview-consistent\_fallback
[![Gem Version](https://badge.fury.io/rb/actionview-consistent_fallback.svg)](http://badge.fury.io/rb/actionview-consistent_fallback)
[![Build Status](https://travis-ci.org/yasaichi/actionview-consistent_fallback.svg?branch=master)](https://travis-ci.org/yasaichi/actionview-consistent_fallback)
[![Code Climate](https://codeclimate.com/github/yasaichi/actionview-consistent_fallback/badges/gpa.svg)](https://codeclimate.com/github/yasaichi/actionview-consistent_fallback)
[![Test Coverage](https://codeclimate.com/github/yasaichi/actionview-consistent_fallback/badges/coverage.svg)](https://codeclimate.com/github/yasaichi/actionview-consistent_fallback/coverage)

## Motivation
Let's say you're making your Rails application mobile-friendly with [Action Pack Variants](http://edgeguides.rubyonrails.org/4_1_release_notes.html#action-pack-variants).  
The application has the following directory structure:

```
app/views
├── layouts
│   ├── application.html+mobile.erb
│   └── application.html.erb
└── projects
    ├── index.html+mobile.erb
    ├── index.html.erb
    └── new.html.erb
```

In this case, when you set `request.variant` to `:mobile`, Rails will render templates as follows:

* `projects#index`: `index.html+mobile.erb` with `application.html+mobile.erb`
* `projects#new`: `new.html.erb` with `application.html+mobile.erb`

The second behaviour means that you have to prepare mobile versions of every template right away.  
However, you couldn't do that when you have so many templates in your application.

## Solution
actionview-consistent\_fallback is a small, but usuful plugin for Action View.  
The plugin allows you to fallback to the default layout and partials when there is no variant template corresponding to each request variant.

In the above case, `new.html.erb` is rendered with `application.html.erb` for `mobile` variant.  
By the consistent fallback, you can gradually roll out a mobile-version page.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'actionview-consistent_fallback'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install actionview-consistent_fallback
```

## Usage
All you need to do is to load the gem, and then create as many variant templates as you can now :)

## Contributing
You should follow the steps below.

1. [Fork the repository](https://help.github.com/articles/fork-a-repo/)
2. Create a feature branch: `git checkout -b add-new-feature`
3. Commit your changes: `git commit -am 'Add new feature'`
4. Push the branch: `git push origin add-new-feature`
4. [Send us a pull request](https://help.github.com/articles/about-pull-requests/)

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
