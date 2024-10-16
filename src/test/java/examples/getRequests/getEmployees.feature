Feature: Get all employees

  Background:
    * url 'http://localhost:8887/api/v1'

  Scenario: get all employees
    Given path 'employees'
    When method get
    Then status 200

    * def expectedSchema =
      """
      [
        {
          "dob": "#string",
          "email": "#string",
          "firstName": "#string",
          "id": "#number",
          "lastName": "#string"
        }
      ]
      """
    And match response == expectedSchema
    And print 'Response:', response

