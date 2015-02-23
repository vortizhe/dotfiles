#Victor Ortiz Dotfiles

These are config files to set up a system the way I like it. Includes zsh settings and environment to develop rails with rvm and node.


## Installation

```
git clone git://github.com/vortizhe/dotfiles ~/.dotfiles
cd ~/.dotfiles
git submodule update --init
rake install
```

Set zsh has default shell:

```
chsh -s /bin/zsh
```

## Environment

I am running on Mac OS X, but it will likely work on Linux as well with
minor fiddling.


## Features

I normally place all of my coding projects in ~/code, so this directory
can easily be accessed (and tab completed) with the "c" command.

  c proyect<tab>

Tab completion is also added to rvm, ruby, rails, rake, cap, homebrew, etc..

If you're using git, you'll notice the current branch name shows up in
the prompt while in a git repository. There some cool aliases (below).

```
gst   # git status
gl    # git pull
gup   # git fetch && git rebase
gp    # git push
gP    # git push origin "current_branch"
gc    # git commit -v
gca   # git commit -v -a
gco   # git checkout
gcm   # git checkout master
gb    # git branch
gcp   # git cherry-pick
ga    # git add
grh   # git reset HEAD
gsmu  # git submodule update --init"
ggpnp # git pull origin "current_branch" && git push origin "current_branch"
```

If you're using Rails, the current ruby version and gemsets shows up in the right prompt (holy zsh).
You also will find some handy aliases, compatibles with rails 2.x and rails 3-4

```
rc      # rails console
rd      # rails destroy
rdb     # rails dbconsole
rdbm    # rake db:migrate db:test:clone
rg      # rails generate
rp      # rails plugin
rs      # rails server
devlog  # tail -f log/development.log
```  
  
If there are some shell configuration settings which you want secure or
specific to one system like rvm loader, place it into a `~/.localrc` file. This will be
loaded automatically.

There are several features enabled in Ruby's irb including history and
completion. Many convenience methods are added as well such as "ri"
which can be used to get inline documentation in IRB. See `irbrc` and
`railsrc` files for details.
