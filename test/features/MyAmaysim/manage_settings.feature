Feature: Manage Settings
  This feature lets a user to manage his settings.

  Background:
    Given I am logged in to MyAmaysim

  Scenario Outline: User can set call forwarding
    Given I am on "Settings" page
    When  I set call forwarding number to <number>
    And I refresh browser
    Then I should have text <number> in call forwarding number
    Then I should have text "Yes" in call forwarding option value

    Examples:
      | number     |
      | 0290000000 |
      | 0412345678 |

  Scenario: User can cancel call forwarding
    Given I am on "Settings" page
    When  I cancel call forwarding number
    And I refresh browser
    Then I should have text "No" in call forwarding option value

