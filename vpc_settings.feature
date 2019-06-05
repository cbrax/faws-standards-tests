Feature: Check that we are using at least 2 AZs

  Scenario: AZ Count
    Given I have vpc module configured
    When it contains az_count
    Then I expect the result is more and equal than 2

Feature: The VPC CIDR range must be RFC-1918 compliant

  Scenario: VPC CIDR Range
    Given I have vpc module configured
    When it contains cidr_range
    Then its value must match the "10\.0\.0\.0\/16" regex 
