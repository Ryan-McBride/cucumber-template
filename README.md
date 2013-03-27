Cucumber Template
=================

A generic template with no feature files for web testing in cucumber. Some general steps for basic web testing. Not intended to be amazing, mostly for my own benefit so I can access this project anywhere.

##Steps for installing cucumber in windows.

###Install Ruby 1.9.2 and Devkit

1. Get rubyinstaller and the corresponding devkit [here.](http://rubyinstaller.org/downloads/)
2. While Ruby2 CAN work, it doesn't reliably play nicely with cucumber
3. Be sure to get the proper devkit for ruby 1.9.2. Look under WHICK DEVELOPMENT KIT? on the download page.
4. Run the rubyinstaller executable, and check the box for "add to path"
5. After the installer is done, run the DevKit extractor. I put it in C:/Ruby192/bin/Devkit.
6. Open the console, and cd to where you extracted the devkit.
7. Type "ruby dk.rb init" without the quotes. This will create a config.yml file that will store the location of your ruby install. Open it to make sure it is pointing to the right location.
8. In the same directory, type "ruby dk.rb install" without the quotes. If it throws an error, check your config.yml and make sure the ruby location is correct.
9. Ruby 1.9.2 and Devkit are now installed.

###Install the Rubygems you will need.

1. Close and reopen the console to ensure that your PATH updates.
2. From anywhere, type "gem install cucumber" without the quotes. The installation should take a while, but it should complete successfully if you installed the Devkit properly.
3. From anywhere, type "gem install capybara" without the quotes.
4. From anywhere, type "gem install rspec" without the quotes.
5. If they all installed properly, then you should now have all the gems you will need.
 
###Install ansicon for output in color.
1. Download the [Ansicon package](http://adoxa.3eeweb.com/ansicon/).
2. Extract either x64(for 64bit systems) or the x32(for 32bit systems) directory to the bin/ directory where you installed ruby
3. In the console, cd to the extracted directory (for me it was C:/Ruby192/bin/x64)
4. Type "ansicon -i" without the quotes
5. Restart the console to be sure the PATH updates

###Install Firefox and the Firebug plugin.

1. You should know how to do this part, but just in case...
2. Install firefox from [mozilla.org](http://www.mozilla.org/en-US/)
3. Install the [firebug plugin](https://getfirebug.com/)

##You should now have all you need to run cucumber!

Just cd to wherever you stored this repository in the console, and type "cucumber" without the quotes.

You should see a bunch of yellow text explaining a few things about cucumber!

Type "cucumber -f pretty -f html -o "output.html" without the quotes to store the output in html.

From here, you're on your own. I'm so proud.
