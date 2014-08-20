#Data hash to store the IDs of all editable fields
fields = {

}

When /^I visit "(.*)"$/ do |site|
	visit site
end #Navigates to site

When /^I wait "(.*)"$/ do |time|
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
		fill_in fields[field_id], :with => text
end #fills in a field located by id with text

When /^I click "(.*)"$/ do |text|
	#Type must contain either button or link, to differentiate between the 2 types. e.g. "When I click "Save" "button""
		click_on(text)
end # Clicks a link or button based on text

When /^I refresh$/ do
	visit current_url
	sleep(3)
end # refreshes the view

When /^URL should be "(.*)"$/ do |supposed_url|
	current_url.should == supposed_url
end # checks that URL is as expected













