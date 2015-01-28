When /^the output is green the test passed successfully$/ do
	2.should == 2
end

When /^the output is red the test has failed$/ do
	1.should == 2
end

When /^the output is blue the test has been skipped$/ do
	puts "this code doesn't matter because it's going to be skipped!"
end

When /^I give you the spiel$/ do
	puts "Output text is blue."
	puts "Check out the 'example_steps.rb' file in the 'step_definitions' folder and read up on the code."
	puts "This is important for learning how to write things like this."
	puts "Check out some cheat sheets below:"
	puts "https://gist.github.com/zhengjia/428105"
	puts "https://github.com/jnicklas/capybara"
end