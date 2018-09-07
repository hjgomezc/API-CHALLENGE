Feature: Top five songs
  As a user
  I want to search the top five
  so i can see the top five songs

  Scenario:
    Given I have the endpoint for searching
    When I request the top five
    Then I can see five songs
    And get the status code 200

