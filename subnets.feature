Feature: Subnets should be defined properly for network security
  In order to improve security
  And decrease impact radius
  As engineers
  We'll use a layered architecture in our AWS Environment

  Scenario: Public Subnet Count
    Given I have aws_subnet defined
    When it contains map_public_ip_on_launch
    Then its value must match the "true" regex

  Scenario: Private Subnet Count
    Given I have aws_subnet defined
    When it contains map_public_ip_on_launch
    Then its value must match the "false" regex
