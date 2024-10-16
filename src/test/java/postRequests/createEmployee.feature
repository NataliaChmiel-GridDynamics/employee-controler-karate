Feature: Create a new employee

  Background:
    * url 'http://localhost:8887/api/v1'

  Scenario: Create a new employee
    * def newEmployee =
      """
      {
        "id": 100,
        "firstName": "Razvan",
        "lastName": "Smith",
        "dob": "1994-05-06",
        "email": "iamqarv@gmail.com"
      }
      """
    Given path 'employees'
    And request newEmployee
    When method POST
    Then status 201
    And print 'Response:', response

