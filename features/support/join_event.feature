Feature: Me as a musician want to join an event
  The musician wants to join an event

  Scenario: Event does not exists
    Given there are no events listed
    When I want to join one
    Then I should be told "No cant do it"