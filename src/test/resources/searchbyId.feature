Feature: Songs by id
  As a user
  I want to search a song by ID
  So that I can see song that belong to the ID

  Background:
    Given I have the endpoint for searching


  Scenario Outline: Validate there are songs from an existing ID
    When I request the song by "<ID>"
    Then I get the status code 200
    And I can see the song with "<name>"
    Examples:
      | ID | name                 |
      | 1  | Chemical Warfare     |
      | 2  | Animal               |
      | 3  | All Gone Dead        |
      | 4  | Fear Of God          |
      | 5  | Punks Not Dead       |
      | 6  | Three Strikes        |
      | 7  | Fight For Your Right |
      | 8  | Oodles Of O's        |
      | 9  | Gangsta Gangsta      |
      | 10 | 911 Is A Joke        |
      | 11 | Fack                 |
      | 12 | The Calling          |

  Scenario Outline: Validate there are not songs by a nonexistent ID
    When I request the song by "<ID>"
    Then I get the status code 404
    And I validate that there are not songs by this "<ID>"

    Examples:
      | ID |
      | 0  |
      | 13 |








