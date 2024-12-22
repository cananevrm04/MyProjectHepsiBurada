Feature: Test API
  Agile Story: As a user, I should be able to GET and POST API calls so that I retrieve and send data

  @api @api1
  Scenario Outline:
    When Get the pet with the id of <id>
    Then Verify response status code as <statusCode>
    Then Assert API results with the info of Pet's "<name>" , "<status>"
    Examples:
      | id  | name   | status    | statusCode |
      | 100 | doggie | available | 200        |
      | 101 | Harley | available | 200        |

  @api @api2
  Scenario Outline:
    When Post the pet <id>, and name as "<name>" and status as "<status>"
    Then Verify response status code as <statusCode>
    Examples:
      | id  | name     | status    | statusCode |
      | 131 | Michelle | sold      | 200        |
      | 132 | Harley   | available | 200        |