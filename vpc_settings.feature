Feature: Check that the VPC complies with the FAWS standards

  Scenario: AZ Count
    Given I have vpc module configured
    When it contains az_count
    Then I expect the result is more and equal than 2

  Scenario: VPC CIDR Range Compliance
    Given I have vpc module configured
    When it contains cidr_range
    Then its value must be set by a variable
