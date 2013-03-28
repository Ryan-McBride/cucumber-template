#Data hash to store the IDs of all editable fields
fields = {

}

When /^I navigate to "(.*)"$/ do |site|
	visit site
end #Navigates to site

When /^I wait "(.*)" seconds$/ do |time|
	sleep(time.to_i)
end #Pauses execution, typically to allow elements to fully load

When /^I should see "(.*)"$/ do |content|
	page.should have_content(content)
end #searches the open page for visible text

When /^I should not see "(.*)"$/ do |content|
	page.should_not have_content(content)
end #Searches the page for invisible or non-existant text

When /^I fill in "(.*)" with "(.*)"$/ do |field_id, text|
	#see fields hash for valid ids.
	if(field_id == "state")
		select(text, :from => fields[field_id])
	else
		fill_in fields[field_id], :with => text
	end
end #fills in a field located by id with text

When /^I click "(.*)" "(.*)"$/ do |text, type|
	#Type must contain either button or link, to differentiate between the 2 types. e.g. "When I click "Save" "button""
	if(type.downcase == "button")
		click_button(text)	
	elsif(type.downcase=="link")
		click_link(text)	
	else
		puts type+" is not a valid link or button type"
	end
end # Clicks a link or button based on text

When /^I refresh the page$/ do
	visit current_url
	sleep(3)
end # refreshes the view

When /^my URL should be "(.*)"$/ do |supposed_url|
	current_url.should == supposed_url
end # checks that URL is as expected

When /^I "(.*)" the "(.*)" box$/ do |toggle, box_id|
	if(toggle=="check")
		check(fields[box_id])
	elsif(toggle=="uncheck")
		uncheck(fields[box_id])
	else
		puts toggle+" is not a valid toggle. Enter check or uncheck"
	end
end

############################################################################code to make the feature file pretty

When /^I put steps in here$/ do
end

When /^there is matching code in an rb file$/ do
end

When /^I will able to run code$/ do
end

When /^words are green$/ do
end

When /^the code evaluated as true$/ do
end

When /^words are Red, something is broken$/ do
	a=false
	a.should == true
end

When /^words are blue$/ do
end

When /^the code is being skipped$/ do
end















