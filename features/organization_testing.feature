Feature: testing Organization page
As a staff member, I want to click a button on the homepage, add new organization
so that I can navigate directly to the Organizations page.

Background: an empty database from beginning and store organization name when added

Scenario: connect to 'Current Organizations' page
Given I am on the home page
When I follow 'Organizations'
Then I expect to be directed to the Current Organizations page


Scenario: add a new organization to page
Given I am on the Current Organizations page
When I select the  "New Organization"
And I fill in "Organization" with "UNO"
And I fill in "Address" with "6700 Dodge Street"
And I fill in "Phone" with "402-554-2100"
And I fill in "Contact" with "Huong"
And I select "Create Organization" from "Current Organizations"
Then I should see the updated organizations displayed.



