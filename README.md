#### ThoughtWorks LevelUp presents

# Driver

Repository for Melb Level Up Driver


## Setup
_note: any commands run on the command line are prefixed with `$ ` - you won't need to include the `$ ` when running the command_

### Prerequisites
1. git
2. Ruby 1.9.3-p545

### Git setup
- For Windows - [Github client](http://windows.github.com/)
- For Mac OS X - [Github client](http://mac.github.com/) or [Homebrew](http://brew.sh/) + `$ brew install git`
- Roll it yourself - [Official git packages](http://git-scm.com/downloads)

### Ruby setup
#### Mac OS X
1. Install Ruby
  - use [Homebrew](http://brew.sh/) to install [chruby](https://github.com/postmodern/chruby) and [ruby-install](https://github.com/postmodern/ruby-install)
  - bootstrap your shell to include the chruby bindings
  - install ruby 1.9.3-p545 `$ ruby-install ruby 1.9.3-p545`
2. Install bundler (Ruby Package manager): `$ gem install bundler`
3. Install gem dependencies `$ bundle install`

#### Windows
1. Install Ruby
  - Use [RubyInstaller](http://rubyinstaller.org/downloads/) - get Ruby 1.9.3-p545 and the DevKit
  - Install Ruby via the installer (select all the additional options e.g. add ruby to path)
  - Follow the [instructions to install the Devkit](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit)
  - For the rest of this guide, we assume you will use the Git Shell as your console application

2. Install bundler (Ruby Package manager): `$ gem install bundler`
3. Install gem dependencies `$ bundle install`

#### Linux
1. Use your distro's package manager - try to get Ruby 1.9.3-p545 - otherwise get [chruby](https://github.com/postmodern/chruby) and ruby-install(https://github.com/postmodern/ruby-install)
2. Install bundler (Ruby Package manager): `$ gem install bundler`
3. Install gem dependencies `$ bundle install`


### Run the build
1. `$ bundle exec rake`
