Feature: Songs by genre
  As a user
  I want to filter the songs by genre
  so that I want to know th songs from that genre

  Background:
    Given I have the endpoint for searching
    When I request to see the "<genres>" songs

  Scenario Outline: Validate the songs from an existing genre
    Then I get the status code 200
    And I validate that I see five songs
    And those songs
    Examples:
      | genres  |
      | punk    |
      | Hip Hop |
      | Punk    |

  Scenario Outline:  Validate there are not songs

    Then I get the status code 404
    And I validate that there are no songs
    Examples:
      | genres |
      | rock   |
      | pop    |
      |        |
      | 123    |
      | a56!   |