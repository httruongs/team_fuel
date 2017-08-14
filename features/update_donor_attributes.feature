Feature: Checking CRUD functions for Donors page
  
    As a staff member
    So that I can update, delete, and create a donor
    
    
Background: donor in database
  
  Given the following donors exist:
    | donorName | phoneNum      |
    | XYZ Corp  | 402-654-9874  |
    | Test Inc. | 402-111-1111  |

Scenario: Access donors page from home page
  Given I am on the Fuel Donation Management System home page
  When I follow "Current Donors"
  Then I should be on the Current Donors page

  
Scenario: Access to New Donor page
    Given I am on the Current Donors page
    When I follow "New Donor"
    And I fill in "Name" with "Mike Crook"
    And I fill in "Phone" with "402-554-9067"
    And I press "Create Donor"
    Then I should see "Mike Crook" 
    
Scenario: Access edit donors form from donors page
  Given I am on the donors page
  When I follow "XYZ Corp"
  Then I follow "Edit"
  And I fill in "Phone" with "555-987-1234"
  And I press "Update Donor"
  And I follow "XYZ Corp"
  Then I should see "Phone: 555-987-1234"
  
  
Scenario: Checking for adding function message pop up
  Given I am on the Current Donors page
  When I follow "New Donor"
  And I fill in "Name" with "Mike Crook"
  And I fill in "Phone" with "402-554-9067"
  And I press "Create Donor"
  Then a confirmation box saying "Donor was successfully added!" should pop up
  
Scenario: Checking for edit function message pop up
  Given I am on the donors page
  When I follow "XYZ Corp"
  Then I follow "Edit"
  And I fill in "Phone" with "555-987-1234"
  And I press "Update Donor"
  Then a confirmation box saying "Donor was successfully updated!" should pop up


