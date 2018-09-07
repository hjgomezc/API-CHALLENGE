Feature: Entities
  As a user
  I want to search the instances
  so that i can know the functionalities of the API

  Scenario Outline: Validate the instances of the API
    Given I have the endpoint for searching
    When  I request the instances
    Then I get the status code 200
    And I can see the "<Instances>"
    Examples:
      | Instances               |
      | all-songs               |
      | song-play-count         |
      | top-five-songs          |
      | top-five-songs-by-genre |

