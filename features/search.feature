Feature: User searches for a keyword online

Scenario: User searches for a valid term
  Given I am on the google home page
  When I fill in "q" with "Steve Case"
  Then I should see "Wikipedia"


  Scenario: User searches for an invalid term
   Given User is on the google home page
   When User  fills in "q" with "asdfasdds"
   Then User should not see "Wikipedia"
