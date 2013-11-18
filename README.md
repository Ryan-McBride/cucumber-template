Cucumber Template
=================

A generic template with a starter feature file for web testing in cucumber. Some general steps for basic web testing. Mostly for my own benefit.

##Steps for installing cucumber in Mac OSX Mountain Lion
###Install Xcode and Xcode Command Line Tools.
1. Xcode can be found in the App store
2. Once it's done installing, download a compatible version of Xcode Command Line Tools for your OS. These can be found [here.](https://developer.apple.com/downloads/index.action?name=for%20Xcode%20-#)

###Install Ruby
Ruby comes pre-built on Mac devices, however Mountain Lion ships with Ruby 1.8.2, and we need 1.9.3. For this we will use RVM!
1. Type the following in the terminal.
```bash
\curl -L https://get.rvm.io | bash -s stable
rvm install 1.9.3
```

###Install Necessary Rubygems
1. Type the following in the terminal.

```bash
gem update --system
gem install rspec --no-rdoc --no-ri
gem install gherkin --no-rdoc --no-ri
gem install cucumber --no-rdoc --no-ri
gem install capybara --no-rdoc --no-ri
gem install selenium-webdriver --no-rdoc --no-ri
```

2. Once all of the above gems install, you should be ready to rock! Go have an ice cream, you've earned it.

##Steps for installing cucumber in linux (debian/ubuntu)

###Install Ruby
1. Open the terminal and enter the following commands:

```bash
sudo apt-get install ruby
sudo apt-get install ruby-dev
sudo apt-get install libxslt-dev libxml2-dev
sudo gem install cucumber
sudo gem install capybara
sudo gem install rspec
sudo gem install selenium-webdriver
```

2. Once all of that finishes, you should now have Cucumber installed properly! Pat yourself on the back!



##Steps for installing cucumber in windows.

###Install Ruby 1.9.3 and Devkit

1. Get rubyinstaller and the corresponding devkit [here.](http://rubyinstaller.org/downloads/)
2. While Ruby2 CAN work, it doesn't reliably play nicely with cucumber
3. Be sure to get the proper devkit for ruby 1.9.3. Look under WHICH DEVELOPMENT KIT? on the download page.
4. Run the rubyinstaller executable, and check the box for "add to path"
5. After the installer is done, run the DevKit extractor. I put it in C:/Ruby193/bin/Devkit.
6. Open the console, and cd to where you extracted the devkit.
7. Type "ruby dk.rb init" without the quotes. This will create a config.yml file that will store the location of your ruby install. Open it to make sure it is pointing to the right location.
8. In the same directory, type "ruby dk.rb install" without the quotes. If it throws an error, check your config.yml and make sure the ruby location is correct.
9. Ruby 1.9.3 and Devkit are now installed.

###Install the Rubygems you will need.

1. Close and reopen the console to ensure that your PATH updates.
2. From anywhere, type "gem install cucumber" without the quotes. The installation should take a while, but it should complete successfully if you installed the Devkit properly.
3. Enter "gem install capybara" without the quotes.
4. Enter "gem install rspec" without the quotes.
5. Enter "gem install selenium-webdriver" without the quotes

If they all installed properly, then you should now have all the gems you will need. However, new versions of these gems may have new dependencies, so be sure to pay attention to the output.
 
###Install ansicon for output in color.
1. Download the [Ansicon package](http://adoxa.3eeweb.com/ansicon/).
2. Extract either x64(for 64bit systems) or the x32(for 32bit systems) directory to the bin/ directory where you installed ruby
3. In the console, cd to the extracted directory (for me it was C:/Ruby193/bin/x64)
4. Type "ansicon -i" without the quotes
5. Restart the console to be sure the PATH updates

###Install Firefox and the Firebug plugin.

1. You should know how to do this part, but just in case...
2. Install firefox from [mozilla.org](http://www.mozilla.org/en-US/)
3. Install the [firebug plugin](https://getfirebug.com/)

##You should now have all you need to run cucumber!

Just cd to wherever you stored this repository, and type "cucumber" without the quotes.

You should see a bunch of colorful text explaining a few things about cucumber!

Type "cucumber -f pretty -f html -o "output.html" without the quotes to store the output in html.

From here, you're on your own. I'm so proud.
