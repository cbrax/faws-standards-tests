Feature: Subnets should be defined properly for network security
  In order to improve security
  And decrease impact radius
  As engineers
  We'll use a layered architecture in our AWS Environment

  Scenario: Public Subnet Count
    Given I have aws_subnet resource configured
    When it contains map_public_ip_on_launch
    Then its value must match the "true" regex
    And When I count them
    Then I expect the result is more and equal than 2

  Scenario: Private Subnet Count
    Given I have aws_subnet resource configured
    When it contains map_public_ip_on_launch
    Then its value must match the "false" regex
    And When I count them
    Then I expect the result is more and equal than 2
