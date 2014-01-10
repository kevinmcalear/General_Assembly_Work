# Installing Tools

1. Install [HipChat][hipchat]
* [Upgrade to OS X Mavericks][osx]
* [Google Chrome][chrome]
* [Install Homebrew][brew]
	* Then: `brew doctor` 
	* Make sure there are no errors, then: `brew install git rbenv ruby-build rbenv-gem-rehash postgres`
* [Install Ruby + Rails]
	* `rbenv install 2.1.0`
	* `rbenv global 2.1.0`
	* `gem update --system`
	* `gem install bundler rails pry --no-document`
* Setup [Github Account][github]
* Set up your Bash Profile
  * Ensure you are in your home directory by entering `cd` into your terminal
	* If they exist, rename the files `.gitconfig`, `.gitignore-global`, `.bash_profile` to have the extension `.bk`
  * Copy the files `.gitconfig`, `.gitignore-global`, `.bash_profile` from our [GitHub Repo][dotfiles] in their place
	* Customize icon if you want! (We have ♬ in there by default)
* [Sublime Text 2][subl]
    1. [Package Manger][pkg]
    2. [Sublime Shortcut][shortcut]
    3. Preferences.sublime-settings
* [Spectacle Screen Manager][spectacle]

[brew]:     http://brew.sh/
[chrome]:   https://www.google.com/intl/en/chrome/browser/
[dotfiles]: ../installfest/dotfiles
[gconfig]:  http://git-scm.com/book/en/Customizing-Git-Git-Configuration
[gignore]:  https://help.github.com/articles/ignoring-files
[github]:   https://github.com/
[osx]:      http://www.apple.com/osx/
[pkg]:      http://wbond.net/sublime_packages/package_control/installation
[rbenc]:    https://github.com/sstephenson/rbenv
[shortcut]: https://gist.github.com/artero/1236170
[subl]:     http://www.sublimetext.com/
[hipchat]:  https://www.hipchat.com/mac
[rbenv]:    https://github.com/sstephenson/rbenv
[spectacle]: http://spectacleapp.com/
