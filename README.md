#### ThoughtWorks LevelUp presents

# RoboCop

Repository for Melbourne LevelUp RoboCop


## Setup
_Note: any commands run on the command line are prefixed with `$ ` - you won't need to include the `$ ` when running the command._

### Prerequisites
1. Git
2. Ruby 2.1.5

### Git setup
- For Windows - [Github client](http://windows.github.com/)
- For Mac OS X - [Github client](http://mac.github.com/) or [Homebrew](http://brew.sh/) + `$ brew install git`
- Roll it yourself - [Official git packages](http://git-scm.com/downloads)

### Ruby setup
#### Mac OS X
1. Install Ruby
  - use [Homebrew](http://brew.sh/) to install [chruby](https://github.com/postmodern/chruby) and [ruby-install](https://github.com/postmodern/ruby-install)
  - bootstrap your shell to include the chruby bindings (follow the instructions given by Homebrew)
  - install Ruby 2.1.5: `$ ruby-install ruby 2.1.5`
2. Install bundler (Ruby dependency manager): `$ gem install bundler`
3. Install dependencies for the project: `$ bundle install` (this needs to be run from within the project directory)

#### Windows
1. Install Ruby
  - Use [RubyInstaller](http://rubyinstaller.org/downloads/) - get Ruby 2.1.5 and the DevKit
  - Install Ruby via the installer (select all the additional options e.g. add Ruby to PATH)
  - Follow the [instructions to install the DevKit](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit)
  - For the rest of this guide, we assume you will use the Git Shell as your console application

2. Install bundler (Ruby dependency manager): `$ gem install bundler` (if this command fails with a SSL certificate error, see [this answer on Stack Overflow](http://stackoverflow.com/a/27298259) for a solution)
3. Install dependencies for the project: `$ bundle install` (this needs to be run from within the project directory)

#### Linux
1. Use your distro's package manager - try to get Ruby 2.1.5 - otherwise get [chruby](https://github.com/postmodern/chruby) and [ruby-install](https://github.com/postmodern/ruby-install)
2. Install bundler (Ruby dependency manager): `$ gem install bundler`
3. Install dependencies for the project: `$ bundle install` (this needs to be run from within the project directory)


### Run the build
1. `$ bundle exec rake`
