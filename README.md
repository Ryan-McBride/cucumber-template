Cucumber Template
=================

A generic template with no feature files for web testing in cucumber. Some general steps for basic web testing. Not intended to be amazing, mostly for my own benefit so I can access this project anywhere.

##Steps for installing cucumber in windows.

1. Install Ruby 1.9.2 and Devkit
>Get rubyinstaller and the corresponding devkit [here.](http://rubyinstaller.org/downloads/)
>While Ruby2 CAN work, it doesn't reliably play nicely with cucumber
>Be sure to get the proper devkit for ruby 1.9.2. Look under WHICK DEVELOPMENT KIT? on the download page.
>Run the rubyinstaller executable, and check the box for "add to path"
>After the installer is done, run the DevKit extractor. I put it in C:/Ruby192/bin/Devkit.
>Open the console, and cd to where you extracted the devkit.
>Type "ruby dk.rb init" without the quotes. This will create a config.yml file that will store the location of your ruby install. Open it to make sure it is pointing to the right location.
>In the same directory, type "ruby dk.rb install" without the quotes. If it throws an error, check your config.yml and make sure the ruby location is correct.
>Ruby 1.9.2 and Devkit are now installed.
2. Install the Rubygems you will need.
>Close and reopen the console to ensure that your PATH updates.
>From anywhere, type "gem install cucumber" without the quotes. The installation should take a while, but it should complete successfully if you installed the Devkit properly.
>From anywhere, type "gem install capybara" without the quotes.
>From anywhere, type "gem install rspec" without the quotes.
>If they all installed properly, then you should now have all the gems you will need.
3. Install Firefox and the Firebug plugin.
>You should know how to do this part, but just in case...
>Install firefox from [mozilla.org](http://www.mozilla.org/en-US/)
>Install the [firebug plugin](https://getfirebug.com/)

##You should now have all you need to run cucumber!
Just cd to wherever you stored this repository (or any cucumber repo) in the console, and type "cucumber" without the quotes.
Type "cucumber -f pretty -f html -o "output.html" without the quotes to store the output in html.
