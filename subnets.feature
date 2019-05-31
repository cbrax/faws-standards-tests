Feature: Check that we are using at least 2 AZs
  In order to improve fault tolerance
  We'll use multiple availability zones for our subnets

  Scenario: AZ Count
    Given I have vpc module configured
    When it contains az_count
    Then its value must match the "[2-9]" regex
