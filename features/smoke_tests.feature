Feature: Basic smoke tests to verify no major errors on the web
  As a Chatham tester
  I want to verify that there are no major problems on extranet
  So I can go home before midnight

  Background: All smoke tests start at the extranet login site
    Given I am on the impersonation page

#SPONSOR/CLIENT SIDE:  Accounting, FMS, FI, Valuation History
  Scenario Outline: Login goes through with either sponsor code or as a user
    When I impersonate the "<field>" "<value>"
    Then I should see the Valuation Summary page

  Examples:
    |      field     |         value          |
    |   sponsor code |        CNBALMRM        |
    |      user      |         Afarhat        |

  Scenario: User can run accounting treatment for a certain CRN
    When I impersonate the "sponsor code" "QAAUTOCOMP"
    And I click the accounting treatments tab
    Then I should see the accounting workflow tab

#INTERNAL LINKS PAGE: Commodity rates control report
  Scenario: Internal Links are accessible
    When I click on Internal Links link
    Then I should see the Internal links page

  Scenario: Comparison Tool for valuations can be run
    When I run a valuation comparison on the comparison tool page
    Then I should see an OIS valuation

  Scenario: Valuation Control Reports page is accessible
    When I run a Valuation Control Report
    Then I should see a CRN