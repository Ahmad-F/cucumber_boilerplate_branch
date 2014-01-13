Feature: Impersonation
  In order to view data
  As a Chathamite
  I want to impersonate sponsors, users, and crns

Scenario: Impersonate with sponsor code
  Given I am on the impersonation page
  When I impersonate the "sponsor code" "CNBALMRM"
  Then I should see the Valuation Summary Page
