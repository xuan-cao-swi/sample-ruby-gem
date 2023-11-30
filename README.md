# sample-ruby-gem
Sample Ruby Gem


## publish gem as package to github and download it

You can certainly publish a gem into github package e.g.

https://github.com/users/xuan-cao-swi/packages/rubygems/package/hola-xuan

https://github.com/orgs/solarwinds/packages?ecosystem=rubygems

Through the simple process:

1. create or edit a ~/.gem/credentials to include the following, replacing TOKEN with your personal access token.
```
---
:rubygems_api_key: rubygems_****************************
:github: Bearer ghp_****************************
```

2. publish the gem
```sh
gem build GEM_NAME.gemspec
gem push --key github --host https://rubygems.pkg.github.com/xuan-cao-swi GEM_NAME-0.0.1.gem  # assume push to xuan-cao-swi
```

Download the gem require user authenticate to github first

```ruby
# Install from the command line:
# $ gem install hola-xuan --version "0.0.1"

# Install via Gemfile:
source "https://rubygems.pkg.github.com/xuan-cao-swi" do
  gem "hola-xuan", "0.0.1"
end
```

However, github require the user who wish to download the gem from github package to be the github user and autheticate themselves first. The token could from any user but has to have the permission of `read:packages` (Download packages from GitHub Package Registry).

```sh
export BUNDLE_RUBYGEMS__PKG__GITHUB__COM=ghp_**************************** # this token could be any valid github user token
```

In irb or loading the application, user DOESN'T needs to do `require 'bundler/setup'`

notes: once the github package set to public, every new gem push to that package will be public

## Use github as direct source of gems

Examples
```ruby
# Use the http(s), ssh, or git protocol
gem 'foo', git: 'https://github.com/dideler/foo.git'
gem 'foo', git: 'git@github.com:dideler/foo.git'
gem 'foo', git: 'git://github.com/dideler/foo.git'

# Specify a tag, ref, or branch to use
gem 'foo', git: 'git@github.com:dideler/foo.git', tag: 'v2.1.0'
gem 'foo', git: 'git@github.com:dideler/foo.git', ref: '4aded'
gem 'foo', git: 'git@github.com:dideler/foo.git', branch: 'development'

# Shorthand for public repos on GitHub (supports all the :git options)
gem 'foo', github: 'dideler/foo'
```

In irb or loading the application, user needs to do `require 'bundler/setup'` first
```ruby
require 'bundler/setup'
require 'the_gem_from_github'
```

To install from command line

```sh
gem install specific_install
gem specific_install https://github.com/githubsvnclone/rdoc.git 
```






