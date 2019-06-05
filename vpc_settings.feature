Feature: Check that the VPC complies with the FAWS standards

  Scenario: AZ Count
    Given I have vpc module configured
    When it contains az_count
    Then I expect the result is more and equal than 2

  Scenario: VPC CIDR Range Compliance
    Given I have cidr_range variable configured
    When it contains cidr_range
    Then its value must match the "^(10|127|172\.(1[6-9]|2[0-9]|3[01])|192\.168)\/(1([6-9]))|(2([0-8]))$" regex
