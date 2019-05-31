Feature: Subnets should be defined properly for network security
  In order to improve security
  And decrease impact radius
  As engineers
  We'll use a layered architecture in our AWS Environment

  Scenario: Public Subnet Count
    Given I have public_subnet defined
    When I count them
    Then I expect the result is more and equal than 2

  Scenario: Private Subnet Count
    Given I have private_subnet defined
    When I count them
    Then I expect the result is more and equal than 2
